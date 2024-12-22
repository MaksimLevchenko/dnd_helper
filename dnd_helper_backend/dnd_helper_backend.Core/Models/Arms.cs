using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.ValueObjects;

namespace dnd_helper_backend.Core.Models
{
    public class Arms
    {
        public Arms() { }
        public Arms(Guid id, string name, bool isMelee, bool isSimple, Coins price, Dices damage, DamageTypes damageType, double weight, List<string> armsFeatures) 
        {
            Id = id;
            Name = name;
            IsMelee = isMelee;
            IsSimple = isSimple;
            Price = price;
            Damage = damage;
            DamageType = damageType;
            Weight = weight;
            ArmsFeatures = armsFeatures;
        }

        public Guid Id { get; set; }
        public string Name { get; set; }
        public bool IsMelee{ get; set; }
        public bool IsSimple{ get; set; }
        public Coins? Price { get; set; }
        public Dices Damage {  get; set; }
        public DamageTypes DamageType { get; set; }
        public double Weight { get; set; }
        public List<string> ArmsFeatures { get; set; }
    }
}
