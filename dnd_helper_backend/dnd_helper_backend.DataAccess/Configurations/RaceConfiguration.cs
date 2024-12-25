//using dnd_helper_backend.Core.Enums;
//using dnd_helper_backend.Core.ValueObjects;
//using Microsoft.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore.Metadata.Builders;
//using System.Text.Json;


//namespace dnd_helper_backend.DataAccess.Configurations
//{
//    public class RaceConfiguration : IEntityTypeConfiguration<Race>
//    {
//        public void Configure(EntityTypeBuilder<Race> builder)
//        {
//            builder.OwnsOne(x => x.Attributes, ownedNavigationBuilder =>
//            {
//                ownedNavigationBuilder.ToJson();
//            });

//            builder.Property(race => race.RaceFeatures)
//           .HasConversion(
//               v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
//               v => JsonSerializer.Deserialize<Dictionary<string, string>>(v, new JsonSerializerOptions()))
//           .HasColumnType("jsonb");

//            builder.Property(race => race.Skills)
//            .HasColumnType("text[]") // Тип массива в PostgreSQL
//            .HasConversion(
//                v => v.Select(r => r.ToString()).ToArray(), // Преобразование List в массив
//                v => v.Select(r => Enum.Parse<Skills>(r)).ToList()   // Преобразование массива обратно в List
//            );

//            builder.HasMany(x => x.SubRaces).WithOne(x => x.Race);

//            builder.HasKey(race => race.RaceId);
//            builder.Property(race => race.Name).IsRequired();

//        }
//    }
//}
