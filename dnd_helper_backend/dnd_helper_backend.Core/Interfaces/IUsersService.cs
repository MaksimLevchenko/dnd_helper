using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.Application.Services
{
    public interface IUsersService
    {
        Task<List<User>> GetAllUsers();
        Task<Guid> Registration(User user);
        string Hash(string data);
    }
}