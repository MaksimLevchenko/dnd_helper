using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.Application.Services
{
    public interface IUsersService
    {
        Task<List<User>> GetAllUsers();
        Task<Guid> Register(string username, string email, string pass);
        Task<string> Login(string email, string pass);
    }
}