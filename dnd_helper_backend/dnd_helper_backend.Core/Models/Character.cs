using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class Character
    {
        public Guid Id {  get; set; }
        public Guid UserId { get; set; }
        public User User { get; set; }
        public string CharacterName { get; set; }
        public Race CharacterRace { get; set; }
        public SubRace SubRace { get; set; }
        public Class CharacterClass { get; set; }
        public SubClass SubClass { get; set; }
        public Background Background { get; set; }
        public int Experience { get; set; }
        public Dices DiceHit { get; set; }
        public int MaxHitPoints { get; set; }
        public int CurrentHitPoints { get; set; }
        public int TemporaryHitPoints { get; set; }
        public int Speed { get; set; }
        public int ArmorClass { get; set; }
        public bool Inspiration { get; set; }
        public Conditions Conditions {  get; set; }
        public int Exhausion { get; set; }
        public Attributes Attributes { get; set; }
        public List<AttributesEnum> SavingThrows { get; set; }
        public List<Skills> SkillsProficiency { get; set; }
        public List<Skills> SkillsExpertise {  get; set; }
        public List<Arms> Attacks { get; set; }
        //List<SpellsData>? preparedSpells,
        //List<SpellsData>? knownSpells,
        //Attributes? spellcastingAttribute,
        //Dictionary<int, int>? SpellSlots { get; set; }
        public List<string> Languages { get; set; }
        public List<string> Tools { get; set; }
        public List<string> Weapons { get; set; }
        public Ideology? ideology { get; set; }
        public string Biography {  get; set; }
        public string Weight {  get; set; }
        public string Height { get; set; }
        public string Age { get; set; }
        public string HairColor { get; set; }
        public string EyeColor { get; set; }
        public string SkinColor { get; set; }
        public string AlliesAndOrganizations { get; set; }
        public string Purpose {  get; set; }
        public string Ideals { get; set; }
        public string Bonds { get; set; }
        public string Flaws { get; set; }
        public string Notes {  get; set; }
        public Coins Coins {  get; set; }
        public List<string> Equipment {  get; set; }
        public List<string> Treasures { get; set; }
    }
}
