using dnd_helper_backend.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Spell
    {
        public Spell() { }
        public string Name { get; set; } = "name";
        public int? Level { get; set; }
        public string? School { get; set; }
        public bool? IsVerbal { get; set; }
        public bool? IsSomatic { get; set; }
        public bool? IsMaterial { get; set; }
        public string? MaterialComponents { get; set; }
        public int? CastingTime { get; set; }
        public string? CastingResource { get; set; }
        public int? CastingResourceCost { get; set; }
        public string? CastingConditions { get; set; }
        public string? TargetAndAreaType { get; set; }
        public string? AreaSizeUnits { get; set; }
        public int? Area { get; set; }
        public string? DistanceType { get; set; }
        public int? Distance { get; set; }
        public string? DurationType { get; set; }
        public int? Duration { get; set; }
        public string? ActionType { get; set; }
        public string? SavingThrow { get; set; }
        public string? Damage { get; set; }
        public string? DamageType { get; set; }
        public string? Description { get; set; }
        public Class? Classes { get; set; }
        public string? SubClasses { get; set; }
        public string? Source { get; set; }

        // Constructor
        public Spell(
            string name = "name",
            int? level = null,
            string? school = null,
            bool? isVerbal = null,
            bool? isSomatic = null,
            bool? isMaterial = null,
            string? materialComponents = null,
            int? castingTime = null,
            string? castingResource = null,
            int? castingResourceCost = null,
            string? castingConditions = null,
            string? targetAndAreaType = null,
            string? areaSizeUnits = null,
            int? area = null,
            string? distanceType = null,
            int? distance = null,
            string? durationType = null,
            int? duration = null,
            string? actionType = null,
            string? savingThrow = null,
            string? damage = null,
            string? damageType = null,
            string? description = null,
            Class? classes = null,
            string? subClasses = null,
            string? source = null)
        {
            Name = name;
            Level = level;
            School = school;
            IsVerbal = isVerbal;
            IsSomatic = isSomatic;
            IsMaterial = isMaterial;
            MaterialComponents = materialComponents;
            CastingTime = castingTime;
            CastingResource = castingResource;
            CastingResourceCost = castingResourceCost;
            CastingConditions = castingConditions;
            TargetAndAreaType = targetAndAreaType;
            AreaSizeUnits = areaSizeUnits;
            Area = area;
            DistanceType = distanceType;
            Distance = distance;
            DurationType = durationType;
            Duration = duration;
            ActionType = actionType;
            SavingThrow = savingThrow;
            Damage = damage;
            DamageType = damageType;
            Description = description;
            Classes = classes;
            SubClasses = subClasses;
            Source = source;
        }
    }
}
