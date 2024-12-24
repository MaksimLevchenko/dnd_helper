using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dnd_helper_backend.Core.ValueObjects;

namespace dnd_helper_backend.Core.Models
{
    public class Armor
    {
        public Armor(Guid armorId, string name, int armorClass, bool grantsDexerityBonus,
                    int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage,
                    int minStrength, string armorType) 
        {
            this.ArmorId = armorId;
            this.Name = name;
            this.ArmorClass = armorClass;
            this.GrantsDexerityBonus = grantsDexerityBonus;
            this.MaxDexterityBonus = maxDexterityBonus;
            this.Weight = weight;
            this.Price = price;
            this.StelsDisadvantage = stelsDisadvantage;
            this.MinStrength = minStrength;
            this.ArmorType = armorType;
        }
        public Guid ArmorId { get; set; }
        public string? Name { get; set; }
        public int ArmorClass { get; set; }
        public bool GrantsDexerityBonus { get; set; }
        public int MaxDexterityBonus { get; set; }
        public int Weight { get; set; }
        public Coins? Price { get; set; }
        public bool StelsDisadvantage { get; set; }
        public int MinStrength { get; set; }
        public string? ArmorType { get; set; }

        public static Armor Create(Guid armorId, string name, int armorClass, bool grantsDexerityBonus,
                                        int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage,
                                        int minStrength, string armorType)
        {

            var Armor = new Armor(armorId, name, armorClass, grantsDexerityBonus, maxDexterityBonus, weight, price, stelsDisadvantage, minStrength, armorType);

            return Armor;
        }
    }
}
