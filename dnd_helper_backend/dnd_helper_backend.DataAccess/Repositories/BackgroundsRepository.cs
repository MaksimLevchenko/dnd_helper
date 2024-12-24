//using dnd_helper_backend.Core.Enums;
//using dnd_helper_backend.Core.ValueObjects;
//using Microsoft.EntityFrameworkCore;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace dnd_helper_backend.DataAccess.Repositories
//{
//    public class BackgroundsRepository : IBackgroundsRepository
//    {
//        private readonly DndHelperDbContext _context;
//        public BackgroundsRepository(DndHelperDbContext context)
//        {
//            _context = context;
//        }

//        public async Task<List<Background>> Get()
//        {
//            var results = await _context.Backgrounds
//                .AsNoTracking()
//                .ToListAsync();

//            return results;
//        }

//        public async Task<Background> GetByID(Guid id)
//        {
//            var result = await _context.Backgrounds
//                .AsNoTracking()
//                .FirstOrDefaultAsync(x => x.Id == id);

//            return result;
//        }

//        public async Task<Guid> Create(Guid id, string name, List<Skills> skillProficiencies, string toolProficiencies, string equipment, string description)
//        {

//            var result = new Background(id, name, skillProficiencies, toolProficiencies, equipment, description);

//            await _context.AddAsync(result);
//            await _context.SaveChangesAsync();
//            return result.Id;
//        }

//        public async Task<Guid> Update(Guid id, string name, List<Skills> skillProficiencies, string toolProficiencies, string equipment, string description)
//        {
//            await _context.Backgrounds
//                 .Where(x => x.Id == id)
//                 .ExecuteUpdateAsync(s => s
//                     .SetProperty(x => x.Name, name)
//                     .SetProperty(x => x.SkillProficiencies, skillProficiencies)
//                     .SetProperty(x => x.ToolProficiencies, toolProficiencies)
//                     .SetProperty(x => x.Equipment, equipment)
//                     .SetProperty(x => x.Description, description));

//            return id;
//        }

//        public async Task<Guid> Delete(Guid id)
//        {
//            await _context.Backgrounds
//                .Where(x => x.Id == id)
//                .ExecuteDeleteAsync();
//            return id;
//        }
//    }
//}
