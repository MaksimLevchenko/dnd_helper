using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace dnd_helper_backend.Core.Models
{
    public class Race
    {
        public Race(Guid raceId, string name, Dictionary<string, int> attributes, List<string> skills, List<string> subRaces, Dictionary<string, string> raceFeatures) 
        {
            RaceId = raceId;
            Name = name;
            Attributes = attributes;
            Skills = skills;
            SubRaces = subRaces;
            RaceFeatures = raceFeatures;
        }
        public Guid RaceId { get; set; }
        public string Name { get; set; }
        public Dictionary<string, int> Attributes {  get; set; }
        public List<string> Skills { get; set; }
        public List<string> SubRaces { get; set; }
        public Dictionary<string, string> RaceFeatures { get; set; }
    }
}
