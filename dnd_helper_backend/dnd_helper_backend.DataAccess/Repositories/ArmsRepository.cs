using dnd_helper_backend.Core.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public class ArmsRepository : IArmsRepository
    {
        private readonly DndHelperDbContext _context;
        public ArmsRepository(DndHelperDbContext context)
        {
            _context = context;
        }

        public async Task<List<Arms>> Get()
        {
            var results = await _context.Arms
                .AsNoTracking()
                .ToListAsync();

            return results;
        }

        public async Task<Arms> GetByID(Guid id)
        {
            var result = await _context.Arms
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.Id == id);

            return result;
        }

        public async Task<Guid> Create(Guid id, string name, bool isMelee, bool isSimple, Coins price, string damage, string damageType, double weight, List<string> armsFeatures)
        {

            var result = new Arms(id, name, isMelee, isSimple, price, damage, damageType, weight, armsFeatures);

            await _context.AddAsync(result);
            await _context.SaveChangesAsync();
            return result.Id;
        }

        public async Task<Guid> Update(Guid id, string name, bool isMelee, bool isSimple, Coins price, string damage, string damageType, double weight, List<string> armsFeatures)
        {
            await _context.Arms
                 .Where(x => x.Id == id)
                 .ExecuteUpdateAsync(s => s
                     .SetProperty(x => x.Name, name)
                     .SetProperty(x => x.IsMelee, isMelee)
                     .SetProperty(x => x.IsSimple, isSimple)
                     .SetProperty(x => x.Price, price)
                     .SetProperty(x => x.Damage, damage)
                     .SetProperty(x => x.DamageType, damageType)
                     .SetProperty(x => x.Weight, weight)
                     .SetProperty(x => x.ArmsFeatures, armsFeatures));
            return id;
        }

        public async Task<Guid> Delete(Guid id)
        {
            await _context.Arms
                .Where(x => x.Id == id)
                .ExecuteDeleteAsync();
            return id;
        }
    }
}
