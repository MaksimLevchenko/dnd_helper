using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class Class
    {
        public Class() { }
        public Class(Guid id, 
                    string name, 
                    List<SubClass> subClasses, 
                    List<AttributesEnum> savingThrows, 
                    Dices hitDice, 
                    List<Arms> proficienciesWeapons,
                    List<Armor> proficienciesArmor,
                    string description,
                    string source)
        {
            Id = id; 
            Name = name; 
            SubClasses = subClasses; 
            SavingThrows = savingThrows; 
            HitDice = hitDice;
            ProficienciesWeapons = proficienciesWeapons;
            ProficienciesArmor = proficienciesArmor;
            Description = description;
            Source = source;
        }
        public Guid Id { get; set; }
        public string Name { get; set; }

        public List<SubClass> SubClasses {  get; set; }
        public List<AttributesEnum> SavingThrows {  get; set; }
        public Dices HitDice {  get; set; }
        public List<Arms> ProficienciesWeapons { get; set; }
        public List<Armor> ProficienciesArmor { get; set; }
        public string Description { get; set; }
        //required String imageLink,
        public string Source {  get; set; }
    }
}
