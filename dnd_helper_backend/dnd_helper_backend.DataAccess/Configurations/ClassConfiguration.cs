using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace dnd_helper_backend.DataAccess.Configurations
{
    public class ClassConfiguration : IEntityTypeConfiguration<Class>
    {
        public void Configure(EntityTypeBuilder<Class> builder)
        {
            builder.HasKey(x => x.Id);
            builder.HasMany(x => x.SubClasses).WithOne(x => x.Class);
            builder.HasMany(x => x.ProficienciesWeapons).WithMany();
            builder.HasMany(x => x.ProficienciesArmor).WithMany();
            builder.Property(x => x.HitDice).HasConversion<string>().IsRequired();

            builder.Property(x => x.SavingThrows)
            .HasColumnType("text[]") // Тип массива в PostgreSQL
            .HasConversion(
                v => v.Select(r => r.ToString()).ToArray(), // Преобразование List в массив
                v => v.Select(r => Enum.Parse<AttributesEnum>(r)).ToList()   // Преобразование массива обратно в List
            );
        }
    }
}
