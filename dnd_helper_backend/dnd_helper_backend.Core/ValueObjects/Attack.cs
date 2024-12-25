using dnd_helper_backend.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Attack
    {
        public string? Name { get; set; }
        public string? Damage { get; set; }
        public int? Range { get; set; }
        public string? DamageType { get; set; }
        public string? ActionCost { get; set; }

        // Конструктор для инициализации
        public Attack(string? name, string? damage, int? range, string? damageType, string? actionCost)
        {
            Name = name;
            Damage = damage;
            Range = range;
            DamageType = damageType;
            ActionCost = actionCost;
        }
    }
}
