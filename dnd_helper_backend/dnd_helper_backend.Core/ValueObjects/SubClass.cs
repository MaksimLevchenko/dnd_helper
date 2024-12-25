using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class SubClass
    {
        public SubClass() { }
        public int? Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? ParentClass { get; set; }
        // lvl: [name: desc, name: desc]
        public Dictionary<int, Dictionary<string, string>[]>? SubclassFeatures { get; set; }
        public Dictionary<int, Dictionary<int, string>>? SubclassSpells { get; set; }
        public Dictionary<int, string>? SubclassSkills { get; set; }

        // Constructor
        public SubClass(
            int? id = null,
            string? name = null,
            string? description = null,
            string? parentClass = null,
            Dictionary<int, Dictionary<string, string>[]>? subclassFeatures = null,
            Dictionary<int, Dictionary<int, string>>? subclassSpells = null,
            Dictionary<int, string>? subclassSkills = null)
        {
            Id = id;
            Name = name;
            Description = description;
            ParentClass = parentClass;
            SubclassFeatures = subclassFeatures;
            SubclassSpells = subclassSpells;
            SubclassSkills = subclassSkills;

        }
    }
}
