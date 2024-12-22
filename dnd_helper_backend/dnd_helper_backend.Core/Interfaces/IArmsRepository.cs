using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IArmsRepository
    {
        Task<Guid> Create(Guid id, string name, bool isMelee, bool isSimple, Coins price, string damage, string damageType, double weight, List<string> armsFeatures);
        Task<Guid> Delete(Guid id);
        Task<List<Arms>> Get();
        Task<Arms> GetByID(Guid id);
        Task<Guid> Update(Guid id, string name, bool isMelee, bool isSimple, Coins price, string damage, string damageType, double weight, List<string> armsFeatures);
    }
}