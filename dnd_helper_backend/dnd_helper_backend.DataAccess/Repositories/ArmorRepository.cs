using dnd_helper_backend.Core.Models;
using dnd_helper_backend.Core.ValueObjects;
using dnd_helper_backend.DataAccess.Aggregates;
using dnd_helper_backend.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;


namespace dnd_helper_backend.DataAccess.Repositories
{
    public class ArmorRepository : IArmorRepository
    {
        private readonly DndHelperDbContext _context;
        public ArmorRepository(DndHelperDbContext context)
        {
            _context = context;
        }

        public async Task<List<Armor>> Get()
        {
            var armorEntities = await _context.Armors
                .AsNoTracking()
                .ToListAsync();

            var armors = armorEntities
                .Select(armor => Armor.Create(armor.ArmorId, armor.Name, armor.ArmorClass, armor.GrantsDexerityBonus,
                                    armor.MaxDexterityBonus, armor.Weight,
                                    new Coins(armor.Price.Platinum, armor.Price.Electrum, armor.Price.Golden, armor.Price.Silver, armor.Price.Copper),
                                    armor.StelsDisadvantage, armor.MinStrength, armor.ArmorType)).ToList();


            return armors;
        }

        public async Task<Armor> GetByID(Guid armorId)
        {
            var armorEntity = await _context.Armors
                .AsNoTracking()
                .FirstOrDefaultAsync(armor => armor.ArmorId == armorId);

            var armor = Armor.Create(armorEntity.ArmorId, armorEntity.Name, armorEntity.ArmorClass, armorEntity.GrantsDexerityBonus,
                                    armorEntity.MaxDexterityBonus, armorEntity.Weight,
                                    new Coins(armorEntity.Price.Platinum, armorEntity.Price.Electrum, armorEntity.Price.Golden, armorEntity.Price.Silver, armorEntity.Price.Copper),
                                    armorEntity.StelsDisadvantage, armorEntity.MinStrength, armorEntity.ArmorType);


            return armor;
        }

        public async Task<Guid> Create(Guid armorId, string name, int armorClass, bool grantsDexerityBonus,
                                        int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage,
                                        int minStrength, string armorType)
        {

            var ArmorEntity = new ArmorEntity
            {
                ArmorId = armorId,
                Name = name,
                ArmorClass = armorClass,
                GrantsDexerityBonus = grantsDexerityBonus,
                MaxDexterityBonus = maxDexterityBonus,
                Weight = weight,
                Price = new CoinsAgg{Platinum = price.Platinum, Electrum = price.Electrum, Copper = price.Copper, Golden = price.Golden, Silver = price.Silver },
                StelsDisadvantage = stelsDisadvantage,
                MinStrength = minStrength,
                ArmorType = armorType
            };

            await _context.AddAsync(ArmorEntity);
            await _context.SaveChangesAsync();
            return ArmorEntity.ArmorId;
        }

        public async Task<Guid> Update(Guid armorId, string name, int armorClass, bool grantsDexerityBonus,
                                        int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage,
                                        int minStrength, string armorType)
        {
            CoinsAgg price_new = new CoinsAgg() {Platinum = price.Platinum, Electrum = price.Electrum, Copper = price.Copper, Golden = price.Golden, Silver = price.Silver };
            await _context.Armors
                 .Where(armor => armor.ArmorId == armorId)
                 .ExecuteUpdateAsync(s => s
                     .SetProperty(armor => armor.Name, name)
                     .SetProperty(armor => armor.ArmorClass, armorClass)
                     .SetProperty(armor => armor.GrantsDexerityBonus, grantsDexerityBonus)
                     .SetProperty(armor => armor.MaxDexterityBonus, maxDexterityBonus)
                     .SetProperty(armor => armor.Weight, weight)
                     .SetProperty(armor => armor.Price, price_new)
                     .SetProperty(armor => armor.StelsDisadvantage, stelsDisadvantage)
                     .SetProperty(armor => armor.MinStrength, minStrength)
                     .SetProperty(armor => armor.ArmorType, armorType));
            return armorId;
        }

        public async Task<Guid> Delete(Guid armorId)
        {
            await _context.Armors
                .Where(armor => armor.ArmorId == armorId)
                .ExecuteDeleteAsync();
            return armorId;
        }
    }
}
