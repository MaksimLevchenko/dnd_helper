using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class Background
    {
        public Background() { }
        public Background(Guid id, string name, List<string> skillProficiencies, string toolProficiencies, string equipment, string description) 
        {
            Id = id;
            Name = name;
            SkillProficiencies = skillProficiencies;
            ToolProficiencies = toolProficiencies;
            Equipment = equipment;
            Description = description;
        }
        public Guid Id { get; set; }
        public string Name { get; set; }
        public List<string> SkillProficiencies { get; set; }
        public string ToolProficiencies { get; set; }
        public string Equipment { get; set; }
        public string Description { get; set; }
    }
}
