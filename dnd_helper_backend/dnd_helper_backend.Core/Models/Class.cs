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
        public Guid Id { get; set; }
        public string Name { get; set; }


        //required List<String> subClasses,
        public List<AttributesEnum> SavingThrows {  get; set; }
        public Dices HitDice {  get; set; }


        public List<Arms> ProficienciesWeapons { get; set; }
        public List<Armor> ProficienciesArmor { get; set; }
        public string Description { get; set; }
        //required String imageLink,
        //required String source,
    }
}
