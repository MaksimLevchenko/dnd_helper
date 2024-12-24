using dnd_helper_backend.Core.Enums;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Race
    {
        public Race() { }
        public string Name { get; set; }
        public Dictionary<string, int>? Attributes { get; set; }
        public string[]? Skills { get; set; }
        public Attack[]? Attacks { get; set; }
        public int? Speed { get; set; }
        public SubRace[]? SubRaces { get; set; }
        public Dictionary<string, string>? RaceFeatures { get; set; }
        public string? ImageLink { get; set; }
        public string? Source { get; set; }

        // Constructor
        public Race(
            string name,
            Dictionary<string, int>? attributes = null,
            string[]? skills = null,
            Attack[]? attacks = null,
            int? speed = null,
            SubRace[]? subRaces = null,
            Dictionary<string, string>? raceFeatures = null,
            string? imageLink = null,
            string? source = null)
        {
            Name = name;
            Attributes = attributes;
            Skills = skills;
            Attacks = attacks;
            Speed = speed;
            SubRaces = subRaces;
            RaceFeatures = raceFeatures;
            ImageLink = imageLink;
            Source = source;
        }
    }
}
