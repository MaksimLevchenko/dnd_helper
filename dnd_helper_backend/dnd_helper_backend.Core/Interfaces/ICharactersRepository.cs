using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface ICharactersRepository
    {
        Task<Guid> Create(Character character);
        Task<List<Character>> Get();
        Task<List<Character>> GetByUserID(Guid userId);
        Task<Character> GetById(Guid id);
        Task<Guid> Delete(Guid id);
        Task<Guid> Update(Character character);
    }
}