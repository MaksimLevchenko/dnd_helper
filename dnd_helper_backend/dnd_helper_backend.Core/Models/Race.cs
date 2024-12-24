using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.ValueObjects;


namespace dnd_helper_backend.Core.Models
{
    public class Race
    {
        public Race() { }
        public Race(Guid raceId, string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures) 
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
        public Attributes Attributes {  get; set; }
        public List<Skills> Skills { get; set; }
        public List<SubRace> SubRaces { get; set; }
        public Dictionary<string, string> RaceFeatures { get; set; }
    }
}
