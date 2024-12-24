using dnd_helper_backend.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Class
    {
        public Class() { }
        public string? Id { get; set; }
        public string? Name { get; set; }
        public string[]? SubClasses { get; set; }
        public string[]? SavingThrows { get; set; }
        public string? HitDice { get; set; }
        public string[]? ProficienciesWeapons { get; set; }
        public string[]? ProficienciesArmor { get; set; }
        public string[][]? StartEquipment { get; set; }
        public Dictionary<int, List<Dictionary<string, string>>> classFeatures { get; set; }
        public string? Description { get; set; }
        public string? ImageLink { get; set; }
        public string? Source { get; set; }

        // Конструктор
        public Class(
            string? id,
            string? name,
            string[]? subClasses,
            string[]? savingThrows,
            string? hitDice,
            string[]? proficienciesWeapons,
            string[]? proficienciesArmor,
            string[][]? startEquipment,
            string? description,
            string? imageLink,
            string? source)
        {
            Id = id;
            Name = name;
            SubClasses = subClasses;
            SavingThrows = savingThrows;
            HitDice = hitDice;
            ProficienciesWeapons = proficienciesWeapons;
            ProficienciesArmor = proficienciesArmor;
            StartEquipment = startEquipment;
            Description = description;
            ImageLink = imageLink;
            Source = source;
        }
    }
}
