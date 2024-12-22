using dnd_helper_backend.Core.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class SubRace
    {   
        public SubRace() { }

        public SubRace(Guid id, Guid raceId, Race race, string name, Dictionary<string, string> subraceFeatures, Attributes attributes) 
        {
            Id = id;
            RaceId = raceId;
            Race = race;
            Name = name;
            Attributes = attributes;
            SubraceFeatures = subraceFeatures;
        }
        public Guid Id { get; set; }
        public Guid RaceId { get; set; }
        public Race? Race { get; set; }
        public string Name { get; set; }
        public Dictionary<string, string> SubraceFeatures { get; set; }
        public Attributes Attributes { get; set; }
    }
}
