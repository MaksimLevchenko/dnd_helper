namespace dnd_helper_backend.Core.ValueObjects
{
    public class Armor
    {
        public Armor() { }
        public string Name { get; set; } = "name";
        public int? ArmorClass { get; set; }
        public bool? GrantsDexterityBonus { get; set; }
        public int? MaxDexterityBonus { get; set; }
        public int? Weight { get; set; }
        public Coins? Price { get; set; }
        public bool? StealthDisadvantage { get; set; }
        public int? MinStrength { get; set; }
        public string? ArmorType { get; set; }
        public byte[]? Image { get; set; }

        public Armor(
            string name = "name",
            int? armorClass = null,
            bool? grantsDexterityBonus = null,
            int? maxDexterityBonus = null,
            int? weight = null,
            Coins? price = null,
            bool? stealthDisadvantage = null,
            int? minStrength = null,
            string? armorType = null,
            byte[]? image = null
        )
        {
            Name = name;
            ArmorClass = armorClass;
            GrantsDexterityBonus = grantsDexterityBonus;
            MaxDexterityBonus = maxDexterityBonus;
            Weight = weight;
            Price = price;
            StealthDisadvantage = stealthDisadvantage;
            MinStrength = minStrength;
            ArmorType = armorType;
            Image = image;
        }
    }
}
