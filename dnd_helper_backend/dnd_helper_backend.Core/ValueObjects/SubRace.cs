using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class SubRace
    {
        public SubRace() { }

        public string Name { get; set; }
        public Dictionary<string, string>? SubraceFeatures { get; set; }
        public Dictionary<string, int>? Attributes { get; set; }

        // Constructor
        public SubRace(
            string name,
            Dictionary<string, string>? subraceFeatures = null,
            Dictionary<string, int>? attributes = null)
        {
            Name = name;
            SubraceFeatures = subraceFeatures;
            Attributes = attributes;
        }
    }
}
