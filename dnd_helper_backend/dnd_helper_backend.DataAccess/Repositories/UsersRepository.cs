using Microsoft.EntityFrameworkCore;
using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public class UsersRepository : IUsersRepository
    {
        private readonly DndHelperDbContext _context;
        public UsersRepository(DndHelperDbContext context)
        {
            _context = context;
        }

        public async Task<List<User>> Get()
        {
            var userEntities = await _context.Users
                .AsNoTracking()
                .ToListAsync();

            var users = userEntities
                .Select(x => User.Create(x.Id, x.Username, x.Email, x.PassHash).User)
                .ToList();

            return users;
        }

        public async Task<Guid> Create(User user)
        {
            var userEntity = new User(user.Id, user.Username, user.Email, user.PassHash);

            await _context.AddAsync(userEntity);
            await _context.SaveChangesAsync();
            return userEntity.Id;
        }

        public async Task<User> GetByEmail(string email)
        {
            var userEntity = await _context.Users
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.Email == email) ?? throw new Exception("User not found");


            var user = User.Create(userEntity.Id, userEntity.Username, userEntity.Email, userEntity.PassHash).User;

            return user;

        }
    }
}
