using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class SubClass
    {
        public SubClass() { }
        public SubClass(Guid id, string name, string description, Guid classId, Class player_class)
        {
            Id = id; 
            Name = name; 
            Description = description;
            ClassId = classId;
            Class = player_class;
        }
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public Guid ClassId { get; set; }
        public Class Class { get; set; }
        
    }
}
