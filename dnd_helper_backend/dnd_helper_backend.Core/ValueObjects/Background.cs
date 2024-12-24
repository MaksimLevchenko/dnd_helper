using dnd_helper_backend.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Background
    {
        public Background() { }
        public int? Id { get; set; }
        public string? Name { get; set; }
        public string[]? SkillProficiencies { get; set; }
        public string? ToolProficiencies { get; set; }
        public string? Equipment { get; set; }
        public string? Description { get; set; }

        // Конструктор для инициализации
        public Background(int? id = null, string? name = null, string[]? skillProficiencies = null, string? toolProficiencies = null, string? equipment = null, string? description = null)
        {
            Id = id;
            Name = name;
            SkillProficiencies = skillProficiencies;
            ToolProficiencies = toolProficiencies;
            Equipment = equipment;
            Description = description;
        }
    }
}
