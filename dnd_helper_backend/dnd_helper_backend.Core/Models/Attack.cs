using dnd_helper_backend.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class Attack
    {
        public Attack(Guid id, string name, Dices damage, int range, DamageTypes damageType, ActionTypes actionCost) 
        {
            Id = id; 
            Name = name;
            Damage = damage;
            Range = range;
            DamageType = damageType;
            ActionCost = actionCost;

        }
        public Guid Id { get; set; }
        public string Name { get; set; }
        public Dices Damage { get; set; }
        public int Range { get; set; }
        public DamageTypes DamageType { get; set; }
        public ActionTypes ActionCost { get; set; }
    }
}
