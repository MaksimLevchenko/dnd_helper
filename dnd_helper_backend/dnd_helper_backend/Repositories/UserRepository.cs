using dnd_helper_backend.Models;
using Microsoft.EntityFrameworkCore;

namespace dnd_helper_backend.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly DndHelperDbContext _context;
        public UserRepository(DndHelperDbContext context)
        {
            _context = context;
        }

        public async Task<List<User>> Get()
        {
            var userEntities = await _context.Users
                .AsNoTracking()
                .ToListAsync();

            return userEntities;
        }

        public async Task<Guid> Create(Guid userId, string userName, string Email, string passHash)
        {
            var user = new User
            {
                UserId = userId,
                UserName = userName,
                Email = Email,
                passHash = passHash
            };

            await _context.AddAsync(user);
            await _context.SaveChangesAsync();
            return user.UserId;
        }
    }
}







