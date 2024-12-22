using dnd_helper_backend.Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace dnd_helper_backend.DataAccess.Configurations
{
    public class RaceConfiguration : IEntityTypeConfiguration<Race>
    {
        public void Configure(EntityTypeBuilder<Race> builder)
        {
            builder.Property(race => race.RaceFeatures)
           .HasConversion(
               v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
               v => JsonSerializer.Deserialize<Dictionary<string, string>>(v, new JsonSerializerOptions()))
           .HasColumnType("jsonb");

            builder.Property(race => race.Attributes)
           .HasConversion(
               v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
               v => JsonSerializer.Deserialize<Dictionary<string, int>>(v, new JsonSerializerOptions()))
           .HasColumnType("jsonb");

            builder.Property(race => race.Skills)
            .HasColumnType("text[]") // Тип массива в PostgreSQL
            .HasConversion(
                v => v.ToArray(), // Преобразование List в массив
                v => v.ToList()   // Преобразование массива обратно в List
            );

            builder.Property(race => race.SubRaces)
            .HasColumnType("text[]") // Тип массива в PostgreSQL
            .HasConversion(
                v => v.ToArray(), // Преобразование List в массив
                v => v.ToList()   // Преобразование массива обратно в List
            );

            builder.HasKey(race => race.RaceId);
            builder.Property(race => race.Name).IsRequired();

        }
    }
}
