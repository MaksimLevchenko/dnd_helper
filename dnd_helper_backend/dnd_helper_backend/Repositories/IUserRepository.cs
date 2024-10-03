using dnd_helper_backend.Models;

namespace dnd_helper_backend.Repositories
{
    public interface IUserRepository
    {
        Task<Guid> Create(Guid userId, string userName, string Email, string passHash);
        Task<List<User>> Get();
    }
}