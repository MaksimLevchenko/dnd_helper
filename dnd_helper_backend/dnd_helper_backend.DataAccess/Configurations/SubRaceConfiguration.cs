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
    public class SubRaceConfiguration : IEntityTypeConfiguration<SubRace>
    {
        public void Configure(EntityTypeBuilder<SubRace> builder)
        {
            builder.HasKey(x => x.Id);
            builder.HasOne(x => x.Race).WithMany(x => x.SubRaces);

            builder.Property(x => x.SubraceFeatures)
           .HasConversion(
               v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
               v => JsonSerializer.Deserialize<Dictionary<string, string>>(v, new JsonSerializerOptions()))
           .HasColumnType("jsonb");

            builder.OwnsOne(x => x.Attributes, ownedNavigationBuilder =>
            {
                ownedNavigationBuilder.ToJson();
            });
        }
    }
}
