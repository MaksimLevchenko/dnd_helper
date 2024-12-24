//using dnd_helper_backend.Core.ValueObjects;
//using Microsoft.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore.Metadata.Builders;


//namespace dnd_helper_backend.DataAccess.Configurations
//{
//    public class ArmorConfiguration : IEntityTypeConfiguration<Armor>
//    {
//        public void Configure(EntityTypeBuilder<Armor> builder)
//        {
//            builder.OwnsOne(armor => armor.Price, ownedNavigationBuilder =>
//            {
//                ownedNavigationBuilder.ToJson();
//            });
//            builder.HasKey(armor => armor.ArmorId);
//            builder.Property(armor => armor.ArmorClass).IsRequired();
//            builder.Property(armor => armor.GrantsDexerityBonus).IsRequired();
//            builder.Property(armor => armor.MaxDexterityBonus).IsRequired();
//            builder.Property(armor => armor.Weight).IsRequired();
//            builder.Property(armor => armor.StelsDisadvantage).IsRequired();
//            builder.Property(armor => armor.MinStrength).IsRequired();
//            builder.Property(armor => armor.ArmorType).IsRequired();
//            builder.Property(armor => armor.Name).IsRequired();
//        }
//    }
//}
