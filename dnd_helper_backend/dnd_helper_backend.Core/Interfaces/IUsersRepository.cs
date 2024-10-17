using dnd_helper_backend.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IUsersRepository
    {
        Task<List<User>> Get();
        Task<Guid> Create(User user);
        Task<User> GetByEmail(string email);
    }
}
