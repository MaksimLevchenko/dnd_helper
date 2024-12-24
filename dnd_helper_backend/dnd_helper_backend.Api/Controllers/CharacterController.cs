using dnd_helper_backend.Application.Services;
using dnd_helper_backend.Core.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using dnd_helper_backend.Api.Contracts.Characters;
using System.IdentityModel.Tokens.Jwt;


namespace dnd_helper_backend.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CharacterController : ControllerBase
    {
        private readonly ICharacterService _characterService;
        public CharacterController(ICharacterService characterService)
        {
            _characterService = characterService;
        }
        [Authorize]
        [Route("GetUserCharacters")]
        [HttpGet]
        public async Task<ActionResult<List<Character>>> GetUserCharacters()
        {
            Request.Headers.TryGetValue("Auth", out var authKey);

            var handler = new JwtSecurityTokenHandler();
            var token = handler.ReadJwtToken(authKey);

            // Извлечение значений из Payload
            var userId = token.Claims.FirstOrDefault(claim => claim.Type == "userId")?.Value;

            var characters = await _characterService.GetByUserId(Guid.Parse(userId));
            return Ok(characters);
        }

        [Authorize]
        [Route("GetCharacter")]
        [HttpGet]
        public async Task<ActionResult<Character>> GetCharacter(Guid characterId)
        {
            var user_characters = (GetUserCharacters().Result.Result as OkObjectResult).Value as List<Character>;
            if (!user_characters.Select(x => x.Id).Contains(characterId))
            {
                return BadRequest("Access denied");
            }
            var character = await _characterService.GetById(characterId);
            return Ok(character);
        }
        [Authorize]
        [Route("Delete")]
        [HttpDelete]
        public async Task<ActionResult<Guid>> Delete(Guid characterId)
        {
            var user_characters = (GetUserCharacters().Result.Result as OkObjectResult).Value as List<Character>;
            if (!user_characters.Select(x => x.Id).Contains(characterId))
            {
                return BadRequest("Access denied");
            }
            var character = await _characterService.DeleteCharacter(characterId);
            return Ok(character);
        }

        [Authorize]
        [Route("Create")]
        [HttpPost]
        public async Task<ActionResult<Guid>> Create([FromBody] CreateCharacterRequest request)
        {
            Request.Headers.TryGetValue("Auth", out var authKey);

            var handler = new JwtSecurityTokenHandler();
            var token = handler.ReadJwtToken(authKey);

            // Извлечение значений из Payload
            var userId = token.Claims.FirstOrDefault(claim => claim.Type == "userId")?.Value;

            var character_id = await _characterService.CreateCharacter(Guid.Parse(userId), characterName: request.CharacterName,
                                                        characterRace: request.CharacterRace,
                                                        subrace: request.SubRace,
                                                        characterClass: request.CharacterClass,
                                                        subclass: request.SubClass,
                                                        background: request.Background,
                                                        experience: request.Experience,
                                                        diceHit: request.DiceHit,
                                                        maxHitPoints: request.MaxHitPoints,
                                                        currentHitPoints: request.CurrentHitPoints,
                                                        temporaryHitPoints: request.TemporaryHitPoints,
                                                        speed: request.Speed,
                                                        armorClass: request.ArmorClass,
                                                        inspiration: request.Inspiration,
                                                        conditions: request.Conditions,
                                                        exhaustion: request.Exhaustion,
                                                        attributes: request.Attributes,
                                                        savingThrows: request.SavingThrows,
                                                        skillsProficiency: request.SkillsProficiency,
                                                        skillsExpertise: request.SkillsExpertise,
                                                        attacks: request.Attacks,
                                                        preparedSpells: request.PreparedSpells,
                                                        knownSpells: request.KnownSpells,
                                                        spellcastingAttribute: request.SpellcastingAttribute,
                                                        spellSlots: request.SpellSlots,
                                                        languages: request.Languages,
                                                        tools: request.Tools,
                                                        weapons: request.Weapons,
                                                        ideology: request.Ideology,
                                                        biography: request.Biography,
                                                        weight: request.Weight,
                                                        height: request.Height,
                                                        age: request.Age,
                                                        hairColor: request.HairColor,
                                                        eyeColor: request.EyeColor,
                                                        skinColor: request.SkinColor,
                                                        alliesAndOrganizations: request.AlliesAndOrganizations,
                                                        purpose: request.Purpose,
                                                        ideals: request.Ideals,
                                                        bonds: request.Bonds,
                                                        flaws: request.Flaws,
                                                        notes: request.Notes,
                                                        coins: request.Coins,
                                                        equipment: request.Equipment,
                                                        treasures: request.Treasures);
            return Ok(character_id);
        }
        [Authorize]
        [Route("Update")]
        [HttpPut]
        public async Task<ActionResult<Guid>> Update([FromBody] UpdateCharacterRequest request)
        {
            var user_characters = (GetUserCharacters().Result.Result as OkObjectResult).Value as List<Character>;
            if (!user_characters.Select(x => x.Id).Contains(request.Id))
            {
                return BadRequest("Access denied");
            }
            Request.Headers.TryGetValue("Auth", out var authKey);

            var handler = new JwtSecurityTokenHandler();
            var token = handler.ReadJwtToken(authKey);

            // Извлечение значений из Payload
            var userId = token.Claims.FirstOrDefault(claim => claim.Type == "userId")?.Value;

            var character_id = await _characterService.UpdateCharacter(request.Id, Guid.Parse(userId), characterName: request.CharacterName,
                                                        characterRace: request.CharacterRace,
                                                        subrace: request.SubRace,
                                                        characterClass: request.CharacterClass,
                                                        subclass: request.SubClass,
                                                        background: request.Background,
                                                        experience: request.Experience,
                                                        diceHit: request.DiceHit,
                                                        maxHitPoints: request.MaxHitPoints,
                                                        currentHitPoints: request.CurrentHitPoints,
                                                        temporaryHitPoints: request.TemporaryHitPoints,
                                                        speed: request.Speed,
                                                        armorClass: request.ArmorClass,
                                                        inspiration: request.Inspiration,
                                                        conditions: request.Conditions,
                                                        exhaustion: request.Exhaustion,
                                                        attributes: request.Attributes,
                                                        savingThrows: request.SavingThrows,
                                                        skillsProficiency: request.SkillsProficiency,
                                                        skillsExpertise: request.SkillsExpertise,
                                                        attacks: request.Attacks,
                                                        preparedSpells: request.PreparedSpells,
                                                        knownSpells: request.KnownSpells,
                                                        spellcastingAttribute: request.SpellcastingAttribute,
                                                        spellSlots: request.SpellSlots,
                                                        languages: request.Languages,
                                                        tools: request.Tools,
                                                        weapons: request.Weapons,
                                                        ideology: request.Ideology,
                                                        biography: request.Biography,
                                                        weight: request.Weight,
                                                        height: request.Height,
                                                        age: request.Age,
                                                        hairColor: request.HairColor,
                                                        eyeColor: request.EyeColor,
                                                        skinColor: request.SkinColor,
                                                        alliesAndOrganizations: request.AlliesAndOrganizations,
                                                        purpose: request.Purpose,
                                                        ideals: request.Ideals,
                                                        bonds: request.Bonds,
                                                        flaws: request.Flaws,
                                                        notes: request.Notes,
                                                        coins: request.Coins,
                                                        equipment: request.Equipment,
                                                        treasures: request.Treasures);
            return Ok(character_id);
        }
    }
}
