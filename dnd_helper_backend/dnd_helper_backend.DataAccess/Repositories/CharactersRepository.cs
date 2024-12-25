using dnd_helper_backend.Core.Models;
using Microsoft.EntityFrameworkCore;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public class CharactersRepository : ICharactersRepository
    {
        private readonly DndHelperDbContext _context;
        public CharactersRepository(DndHelperDbContext context)
        {
            _context = context;
        }

        public async Task<List<Character>> GetByUserID(Guid userId)
        {
            var character = await _context.Characters
                .AsNoTracking()
                .Where(x => x.UserId == userId)
                .ToListAsync();

            return character;
        }

        public async Task<Character> GetById(Guid id)
        {
            var character = await _context.Characters
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.Id == id) ?? throw new Exception("Character not found");

            return character;
        }
        public async Task<Guid> Delete(Guid id)
        {
            await _context.Characters
                .Where(x => x.Id == id)
                .ExecuteDeleteAsync();
            return id;
        }

        public async Task<Guid> Create(Character character)
        {
            await _context.AddAsync(character);
            await _context.SaveChangesAsync();
            return character.Id;
        }
        public async Task<Guid> Update(Character character)
        {
            await _context.Characters
                 .Where(x => x.Id == character.Id)
                 .ExecuteUpdateAsync(s => s
                     .SetProperty(x => x.CharacterName, character.CharacterName)
            .SetProperty(x => x.CharacterRace, character.CharacterRace)
            .SetProperty(x => x.SubRace, character.SubRace)
            .SetProperty(x => x.CharacterClass, character.CharacterClass)
            .SetProperty(x => x.SubClass, character.SubClass)
            .SetProperty(x => x.Background, character.Background)
            .SetProperty(x => x.Experience, character.Experience)
            .SetProperty(x => x.DiceHit, character.DiceHit)
            .SetProperty(x => x.MaxHitPoints, character.MaxHitPoints)
            .SetProperty(x => x.CurrentHitPoints, character.CurrentHitPoints)
            .SetProperty(x => x.TemporaryHitPoints, character.TemporaryHitPoints)
            .SetProperty(x => x.Speed, character.Speed)
            .SetProperty(x => x.ArmorClass, character.ArmorClass)
            .SetProperty(x => x.Inspiration, character.Inspiration)
            .SetProperty(x => x.Conditions, character.Conditions)
            .SetProperty(x => x.Exhaustion, character.Exhaustion)
            .SetProperty(x => x.Attributes, character.Attributes)
            .SetProperty(x => x.SavingThrows, character.SavingThrows)
            .SetProperty(x => x.SkillsProficiency, character.SkillsProficiency)
            .SetProperty(x => x.SkillsExpertise, character.SkillsExpertise)
            .SetProperty(x => x.Attacks, character.Attacks)
            .SetProperty(x => x.PreparedSpells, character.PreparedSpells)
            .SetProperty(x => x.KnownSpells, character.KnownSpells)
            .SetProperty(x => x.SpellcastingAttribute, character.SpellcastingAttribute)
            .SetProperty(x => x.SpellSlots, character.SpellSlots)
            .SetProperty(x => x.Languages, character.Languages)
            .SetProperty(x => x.Tools, character.Tools)
            .SetProperty(x => x.Weapons, character.Weapons)
            .SetProperty(x => x.Ideology, character.Ideology)
            .SetProperty(x => x.Biography, character.Biography)
            .SetProperty(x => x.Weight, character.Weight)
            .SetProperty(x => x.Height, character.Height)
            .SetProperty(x => x.Age, character.Age)
            .SetProperty(x => x.HairColor, character.HairColor)
            .SetProperty(x => x.EyeColor, character.EyeColor)
            .SetProperty(x => x.SkinColor, character.SkinColor)
            .SetProperty(x => x.AlliesAndOrganizations, character.AlliesAndOrganizations)
            .SetProperty(x => x.Purpose, character.Purpose)
            .SetProperty(x => x.Ideals, character.Ideals)
            .SetProperty(x => x.Bonds, character.Bonds)
            .SetProperty(x => x.Flaws, character.Flaws)
            .SetProperty(x => x.Notes, character.Notes)
            .SetProperty(x => x.Coins, character.Coins)
            .SetProperty(x => x.Equipment, character.Equipment)
            .SetProperty(x => x.Treasures, character.Treasures));
            return character.Id;
        }

        public Task<List<Character>> Get()
        {
            throw new NotImplementedException();
        }
    }
}
