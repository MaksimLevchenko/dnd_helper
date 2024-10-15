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

namespace dnd_helper_backend.Application.Services
{
    public class UsersService : IUsersService
    {
        readonly IUsersRepository _usersRepository;
        const string SALT = "t`cc^*Sd9T}'VNpi";
        public UsersService(IUsersRepository usersRepository)
        {
            _usersRepository = usersRepository;
        }

        public async Task<List<User>> GetAllUsers()
        {
            return await _usersRepository.Get();
        }

        public async Task<Guid> Registration(User user)
        {
            return await _usersRepository.Create(user);
        }

        public string Hash(string data)
        {
            byte[] hash = SHA256.HashData(Encoding.UTF8.GetBytes(data+SALT));
            StringBuilder passHash = new StringBuilder();
            foreach (byte b in hash) 
            {
                passHash.Append(b.ToString("X2"));
            }

            return passHash.ToString();
        }
    }
}
