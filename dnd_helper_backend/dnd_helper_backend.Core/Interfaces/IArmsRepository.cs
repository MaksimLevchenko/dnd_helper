using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.Models;
using dnd_helper_backend.Core.ValueObjects;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IArmsRepository
    {
        Task<Guid> Create(Guid id, string name, bool isMelee, bool isSimple, Coins price, Dices damage, DamageTypes damageType, double weight, List<string> armsFeatures);
        Task<Guid> Delete(Guid id);
        Task<List<Arms>> Get();
        Task<Arms> GetByID(Guid id);
        Task<Guid> Update(Guid id, string name, bool isMelee, bool isSimple, Coins price, Dices damage, DamageTypes damageType, double weight, List<string> armsFeatures);
    }
}