using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dnd_helper_backend.Core.Enums;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Arms
    {
        public Arms() { }
        public string Name { get; set; } = "name";
        public bool? IsSimple { get; set; }
        public bool? IsMelee { get; set; }
        public Coins? Price { get; set; }
        public string? Damage { get; set; }
        public string? DamageType { get; set; }
        public double? Weight { get; set; }
        public string[]? ArmsFeatures { get; set; }
        public byte[]? Image { get; set; }

        public Arms(
            string name = "name",
            bool? isSimple = null,
            bool? isMelee = null,
            Coins? price = null,
            string? damage = null,
            string? damageType = null,
            double? weight = null,
            string[]? armsFeatures = null,
            byte[]? image = null
        )
        {
            Name = name;
            IsSimple = isSimple;
            IsMelee = isMelee;
            Price = price;
            Damage = damage;
            DamageType = damageType;
            Weight = weight;
            ArmsFeatures = armsFeatures;
            Image = image;
        }
    }
}
