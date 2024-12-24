using dnd_helper_backend.Core.Models;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Infrastructure.Jwt;
using dnd_helper_backend.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dnd_helper_backend.Core.ValueObjects;

namespace dnd_helper_backend.Application.Services
{
    public class CharacterService : ICharacterService
    {
        private readonly ICharactersRepository _charactersRepository;

        public CharacterService(ICharactersRepository charactersRepository)
        {
            _charactersRepository = charactersRepository;
        }
        public async Task<Character> GetById(Guid characterId)
        {
            return await _charactersRepository.GetById(characterId);
        }

        public async Task<Guid> DeleteCharacter(Guid characterId)
        {
            return await _charactersRepository.Delete(characterId);
        }

        public async Task<List<Character>> GetByUserId(Guid userId)
        {
            return await _charactersRepository.GetByUserID(userId);
        }
        public async Task<Guid> CreateCharacter(Guid userId,
                                        string? characterName = null,
                                        Race? characterRace = null,
                                        SubRace? subrace = null,
                                        Class? characterClass = null,
                                        SubClass? subclass = null,
                                        Background? background = null,
                                        int experience = 0,
                                        string? diceHit = null,
                                        int? maxHitPoints = null,
                                        int? currentHitPoints = null,
                                        int? temporaryHitPoints = null,
                                        int? speed = null,
                                        int? armorClass = null,
                                        bool inspiration = false,
                                        string? conditions = null,
                                        int? exhaustion = null,
                                        Dictionary<string, int>? attributes = null,
                                        string?[]? savingThrows = null,
                                        string?[]? skillsProficiency = null,
                                        string?[]? skillsExpertise = null,
                                        Arms[]? attacks = null,
                                        Spell[]? preparedSpells = null,
                                        Spell[]? knownSpells = null,
                                        string? spellcastingAttribute = null,
                                        Dictionary<int, int>? spellSlots = null,
                                        string?[]? languages = null,
                                        string?[]? tools = null,
                                        string?[]? weapons = null,
                                        string? ideology = null,
                                        string? biography = null,
                                        string? weight = null,
                                        string? height = null,
                                        string? age = null,
                                        string? hairColor = null,
                                        string? eyeColor = null,
                                        string? skinColor = null,
                                        string? alliesAndOrganizations = null,
                                        string? purpose = null,
                                        string? ideals = null,
                                        string? bonds = null,
                                        string? flaws = null,
                                        string? notes = null,
                                        Coins? coins = null,
                                        string?[]? equipment = null,
                                        string?[]? treasures = null)
        {
            var character = new Character(Guid.NewGuid(), userId, characterName: characterName,
                                            characterRace: characterRace,
                                            subrace: subrace,
                                            characterClass: characterClass,
                                            subclass: subclass,
                                            background: background,
                                            experience: experience,
                                            diceHit: diceHit,
                                            maxHitPoints: maxHitPoints,
                                            currentHitPoints: currentHitPoints,
                                            temporaryHitPoints: temporaryHitPoints,
                                            speed: speed,
                                            armorClass: armorClass,
                                            inspiration: inspiration,
                                            conditions: conditions,
                                            exhaustion: exhaustion,
                                            attributes: attributes,
                                            savingThrows: savingThrows,
                                            skillsProficiency: skillsProficiency,
                                            skillsExpertise: skillsExpertise,
                                            attacks: attacks,
                                            preparedSpells: preparedSpells,
                                            knownSpells: knownSpells,
                                            spellcastingAttribute: spellcastingAttribute,
                                            spellSlots: spellSlots,
                                            languages: languages,
                                            tools: tools,
                                            weapons: weapons,
                                            ideology: ideology,
                                            biography: biography,
                                            weight: weight,
                                            height: height,
                                            age: age,
                                            hairColor: hairColor,
                                            eyeColor: eyeColor,
                                            skinColor: skinColor,
                                            alliesAndOrganizations: alliesAndOrganizations,
                                            purpose: purpose,
                                            ideals: ideals,
                                            bonds: bonds,
                                            flaws: flaws,
                                            notes: notes,
                                            coins: coins,
                                            equipment: equipment,
                                            treasures: treasures);

            var character_id = await _charactersRepository.Create(character);

            return character_id;
        }
        public async Task<Guid> UpdateCharacter(Guid id, Guid userId,
                                        string? characterName = null,
                                        Race? characterRace = null,
                                        SubRace? subrace = null,
                                        Class? characterClass = null,
                                        SubClass? subclass = null,
                                        Background? background = null,
                                        int experience = 0,
                                        string? diceHit = null,
                                        int? maxHitPoints = null,
                                        int? currentHitPoints = null,
                                        int? temporaryHitPoints = null,
                                        int? speed = null,
                                        int? armorClass = null,
                                        bool inspiration = false,
                                        string? conditions = null,
                                        int? exhaustion = null,
                                        Dictionary<string, int>? attributes = null,
                                        string?[]? savingThrows = null,
                                        string?[]? skillsProficiency = null,
                                        string?[]? skillsExpertise = null,
                                        Arms[]? attacks = null,
                                        Spell[]? preparedSpells = null,
                                        Spell[]? knownSpells = null,
                                        string? spellcastingAttribute = null,
                                        Dictionary<int, int>? spellSlots = null,
                                        string?[]? languages = null,
                                        string?[]? tools = null,
                                        string?[]? weapons = null,
                                        string? ideology = null,
                                        string? biography = null,
                                        string? weight = null,
                                        string? height = null,
                                        string? age = null,
                                        string? hairColor = null,
                                        string? eyeColor = null,
                                        string? skinColor = null,
                                        string? alliesAndOrganizations = null,
                                        string? purpose = null,
                                        string? ideals = null,
                                        string? bonds = null,
                                        string? flaws = null,
                                        string? notes = null,
                                        Coins? coins = null,
                                        string?[]? equipment = null,
                                        string?[]? treasures = null)
        {
            var character = new Character(id, userId, characterName: characterName,
                                            characterRace: characterRace,
                                            subrace: subrace,
                                            characterClass: characterClass,
                                            subclass: subclass,
                                            background: background,
                                            experience: experience,
                                            diceHit: diceHit,
                                            maxHitPoints: maxHitPoints,
                                            currentHitPoints: currentHitPoints,
                                            temporaryHitPoints: temporaryHitPoints,
                                            speed: speed,
                                            armorClass: armorClass,
                                            inspiration: inspiration,
                                            conditions: conditions,
                                            exhaustion: exhaustion,
                                            attributes: attributes,
                                            savingThrows: savingThrows,
                                            skillsProficiency: skillsProficiency,
                                            skillsExpertise: skillsExpertise,
                                            attacks: attacks,
                                            preparedSpells: preparedSpells,
                                            knownSpells: knownSpells,
                                            spellcastingAttribute: spellcastingAttribute,
                                            spellSlots: spellSlots,
                                            languages: languages,
                                            tools: tools,
                                            weapons: weapons,
                                            ideology: ideology,
                                            biography: biography,
                                            weight: weight,
                                            height: height,
                                            age: age,
                                            hairColor: hairColor,
                                            eyeColor: eyeColor,
                                            skinColor: skinColor,
                                            alliesAndOrganizations: alliesAndOrganizations,
                                            purpose: purpose,
                                            ideals: ideals,
                                            bonds: bonds,
                                            flaws: flaws,
                                            notes: notes,
                                            coins: coins,
                                            equipment: equipment,
                                            treasures: treasures);

            var character_id = await _charactersRepository.Update(character);

            return character_id;
        }


        public Task<List<Character>> GetAllCharacters()
        {
            throw new NotImplementedException();
        }
    }
}
