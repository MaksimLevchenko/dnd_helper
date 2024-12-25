using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.ValueObjects;


namespace dnd_helper_backend.Core.Models
{
    public class Character
    {
        public Character() { }
        public Character(
        Guid id,
        Guid userId,
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
        string?[]? treasures = null
    )
        {
            Id = id;
            UserId = userId;
            CharacterName = characterName;
            CharacterRace = characterRace;
            SubRace = subrace;
            CharacterClass = characterClass;
            SubClass = subclass;
            Background = background;
            Experience = experience;
            DiceHit = diceHit;
            MaxHitPoints = maxHitPoints;
            CurrentHitPoints = currentHitPoints;
            TemporaryHitPoints = temporaryHitPoints;
            Speed = speed;
            ArmorClass = armorClass;
            Inspiration = inspiration;
            Conditions = conditions;
            Exhaustion = exhaustion;
            Attributes = attributes ?? new Dictionary<string, int>
        {
            { "Strength", 10 },
            { "Dexterity", 10 },
            { "Constitution", 10 },
            { "Intelligence", 10 },
            { "Wisdom", 10 },
            { "Charisma", 10 }
        };
            SavingThrows = savingThrows;
            SkillsProficiency = skillsProficiency;
            SkillsExpertise = skillsExpertise;
            Attacks = attacks;
            PreparedSpells = preparedSpells;
            KnownSpells = knownSpells;
            SpellcastingAttribute = spellcastingAttribute;
            SpellSlots = spellSlots;
            Languages = languages;
            Tools = tools;
            Weapons = weapons;
            Ideology = ideology;
            Biography = biography;
            Weight = weight;
            Height = height;
            Age = age;
            HairColor = hairColor;
            EyeColor = eyeColor;
            SkinColor = skinColor;
            AlliesAndOrganizations = alliesAndOrganizations;
            Purpose = purpose;
            Ideals = ideals;
            Bonds = bonds;
            Flaws = flaws;
            Notes = notes;
            Coins = coins;
            Equipment = equipment;
            Treasures = treasures;
        }

        public Guid Id {  get; set; }
        public Guid UserId { get; set; }
        public User? User { get; set; }
        public string? CharacterName { get; set; }
        public Race? CharacterRace { get; set; }
        public SubRace? SubRace { get; set; }
        public Class? CharacterClass { get; set; }
        public SubClass? SubClass { get; set; }
        public Background? Background { get; set; }
        public int Experience { get; set; } = 0;
        public string? DiceHit { get; set; }
        public int? MaxHitPoints { get; set; }
        public int? CurrentHitPoints { get; set; }
        public int? TemporaryHitPoints { get; set; }
        public int? Speed { get; set; }
        public int? ArmorClass { get; set; }
        public bool Inspiration { get; set; } = false;
        public string? Conditions { get; set; }
        public int? Exhaustion { get; set; }
        public Dictionary<string, int>? Attributes { get; set; } = new Dictionary<string, int>
    {
        { "Strength", 10 },
        { "Dexterity", 10 },
        { "Constitution", 10 },
        { "Intelligence", 10 },
        { "Wisdom", 10 },
        { "Charisma", 10 }
    };
        public string?[]? SavingThrows { get; set; }
        public string?[]? SkillsProficiency { get; set; }
        public string?[]? SkillsExpertise { get; set; }
        public Arms[]? Attacks { get; set; }
        public Spell[]? PreparedSpells { get; set; }
        public Spell[]? KnownSpells { get; set; }
        public string? SpellcastingAttribute { get; set; }
        public Dictionary<int, int>? SpellSlots { get; set; }
        public string?[]? Languages { get; set; }
        public string?[]? Tools { get; set; }
        public string?[]? Weapons { get; set; }
        public string? Ideology { get; set; }
        public string? Biography { get; set; }
        public string? Weight { get; set; }
        public string? Height { get; set; }
        public string? Age { get; set; }
        public string? HairColor { get; set; }
        public string? EyeColor { get; set; }
        public string? SkinColor { get; set; }
        public string? AlliesAndOrganizations { get; set; }
        public string? Purpose { get; set; }
        public string? Ideals { get; set; }
        public string? Bonds { get; set; }
        public string? Flaws { get; set; }
        public string? Notes { get; set; }
        public Coins? Coins { get; set; }
        public string?[]? Equipment { get; set; }
        public string?[]? Treasures { get; set; }
    }
}
