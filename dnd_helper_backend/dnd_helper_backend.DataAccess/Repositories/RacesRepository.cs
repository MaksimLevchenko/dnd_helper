using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.Models;
using dnd_helper_backend.Core.ValueObjects;
using dnd_helper_backend.DataAccess.Aggregates;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public class RacesRepository : IRacesRepository
    {
        private readonly DndHelperDbContext _context;
        public RacesRepository(DndHelperDbContext context)
        {
            _context = context;
        }

        public async Task<List<Race>> Get()
        {
            var races = await _context.Races
                .AsNoTracking()
                .ToListAsync();

            return races;
        }

        public async Task<Race> GetByID(Guid raceId)
        {
            var race = await _context.Races
                .AsNoTracking()
                .FirstOrDefaultAsync(armor => armor.RaceId == raceId);

            return race;
        }

        public async Task<Guid> Create(Guid raceId, string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures)
        {

            var race = new Race(raceId, name, attributes, skills, subRaces, raceFeatures);

            await _context.AddAsync(race);
            await _context.SaveChangesAsync();
            return race.RaceId;
        }

        public async Task<Guid> Update(Guid raceId, string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures)
        {
            await _context.Races
                 .Where(race => race.RaceId == raceId)
                 .ExecuteUpdateAsync(s => s
                     .SetProperty(race => race.Name, name)
                     .SetProperty(race => race.Attributes, attributes)
                     .SetProperty(race => race.Skills, skills)
                     .SetProperty(race => race.SubRaces, subRaces)
                     .SetProperty(race => race.RaceFeatures, raceFeatures));

            return raceId;
        }

        public async Task<Guid> Delete(Guid raceId)
        {
            await _context.Races
                .Where(race => race.RaceId == raceId)
                .ExecuteDeleteAsync();
            return raceId;
        }
    }
}
