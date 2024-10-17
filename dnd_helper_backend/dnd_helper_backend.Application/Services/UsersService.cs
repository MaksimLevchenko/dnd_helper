using dnd_helper_backend.Core.Models;
using dnd_helper_backend.DataAccess.Repositories;
using System.Security.Cryptography;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Intrinsics.Arm;
using System.Security.Cryptography.X509Certificates;
using dnd_helper_backend.Infrastructure;

namespace dnd_helper_backend.Application.Services
{
    public class UsersService : IUsersService
    {
        private readonly IUsersRepository _usersRepository;
        private readonly IPasswordHasher _passwordHasher;
        public UsersService(IUsersRepository usersRepository, IPasswordHasher passwordHasher)
        {
            _usersRepository = usersRepository;
            _passwordHasher = passwordHasher;
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

        public async Task Login(string email, string pass)
        { 
            
        }
    }
}
