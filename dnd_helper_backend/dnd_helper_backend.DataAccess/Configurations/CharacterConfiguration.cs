using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace dnd_helper_backend.DataAccess.Configurations
{
    public class CharacterConfiguration : IEntityTypeConfiguration<Character>
    {
        public void Configure(EntityTypeBuilder<Character> builder)
        {
            builder.HasKey(x => x.Id);

            builder.HasOne(x => x.User).WithMany(x => x.Characters);
            builder.HasOne(x => x.CharacterRace).WithMany();
            builder.HasOne(x => x.SubRace).WithMany();
            builder.HasOne(x => x.CharacterClass).WithMany();
            builder.HasOne(x => x.SubClass).WithMany();
            builder.HasOne(x => x.Background).WithMany();
            builder.HasMany(x => x.Attacks).WithMany();

            builder.Property(x => x.DiceHit).HasConversion<string>().IsRequired();
            builder.Property(x => x.ideology).HasConversion<string>().IsRequired();
            builder.Property(x => x.Conditions).HasConversion<string>().IsRequired();

            builder.OwnsOne(x => x.Attributes, ownedNavigationBuilder =>
            {
                ownedNavigationBuilder.ToJson();
            });
            builder.OwnsOne(x => x.Coins, ownedNavigationBuilder =>
            {
                ownedNavigationBuilder.ToJson();
            });

            builder.Property(x => x.SavingThrows)
            .HasColumnType("text[]") // Тип массива в PostgreSQL
            .HasConversion(
                v => v.Select(r => r.ToString()).ToArray(), // Преобразование List в массив
                v => v.Select(r => Enum.Parse<AttributesEnum>(r)).ToList()   // Преобразование массива обратно в List
            );
            builder.Property(x => x.SkillsProficiency)
            .HasColumnType("text[]") // Тип массива в PostgreSQL
            .HasConversion(
                v => v.Select(r => r.ToString()).ToArray(), // Преобразование List в массив
                v => v.Select(r => Enum.Parse<Skills>(r)).ToList()   // Преобразование массива обратно в List
            );
            builder.Property(x => x.SkillsExpertise)
            .HasColumnType("text[]") // Тип массива в PostgreSQL
            .HasConversion(
                v => v.Select(r => r.ToString()).ToArray(), // Преобразование List в массив
                v => v.Select(r => Enum.Parse<Skills>(r)).ToList()   // Преобразование массива обратно в List
            );

            builder.Property(x => x.Languages)
            .HasColumnType("text[]"); // Тип массива в PostgreSQL

            builder.Property(x => x.Tools)
            .HasColumnType("text[]"); // Тип массива в PostgreSQL

            builder.Property(x => x.Weapons)
            .HasColumnType("text[]"); // Тип массива в PostgreSQL

            builder.Property(x => x.Equipment)
            .HasColumnType("text[]"); // Тип массива в PostgreSQL

            builder.Property(x => x.Treasures)
            .HasColumnType("text[]"); // Тип массива в PostgreSQL

        }
    }
}
