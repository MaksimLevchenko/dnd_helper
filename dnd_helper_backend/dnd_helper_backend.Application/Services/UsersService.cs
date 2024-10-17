using dnd_helper_backend.Core.Models;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Infrastructure;
using dnd_helper_backend.Infrastructure.Jwt;

namespace dnd_helper_backend.Application.Services
{
    public class UsersService : IUsersService
    {
        private readonly IUsersRepository _usersRepository;
        private readonly IPasswordHasher _passwordHasher;
        private readonly IJwtProvider _jwtProvider;
        public UsersService(IUsersRepository usersRepository,
            IPasswordHasher passwordHasher,
            IJwtProvider jwtProvider)
        {
            _usersRepository = usersRepository;
            _passwordHasher = passwordHasher;
            _jwtProvider = jwtProvider;
        }

        public async Task<List<User>> GetAllUsers()
        {
            return await _usersRepository.Get();
        }

        public async Task<Guid> Register(string username, string email, string pass)
        {
            string passHash = _passwordHasher.Generate(pass);

            User user = User.Create(
                Guid.NewGuid(),
                username,
                email,
                passHash).User;


            return await _usersRepository.Create(user);
        }

        public async Task<string> Login(string email, string pass)
        {
            User user = await _usersRepository.GetByEmail(email);

            bool result = _passwordHasher.Verify(pass, user.PassHash);

            if (!result) 
            {
                throw new Exception("Incorrect password");
            }

            var token = _jwtProvider.GenerateToken(user);

            return token;
        }
    }
}
