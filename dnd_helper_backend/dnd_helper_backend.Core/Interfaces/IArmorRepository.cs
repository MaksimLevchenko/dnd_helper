using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IArmorRepository
    {
        Task<Guid> Create(Guid armorId, string name, int armorClass, bool grantsDexerityBonus, int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage, int minStrength, string armorType);
        Task<Guid> Delete(Guid armorId);
        Task<List<Armor>> Get();
        Task<Armor> GetByID(Guid armorId);
        Task<Guid> Update(Guid armorId, string name, int armorClass, bool grantsDexerityBonus, int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage, int minStrength, string armorType);
    }
}