using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.Models;
using dnd_helper_backend.Core.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System.Reflection.Emit;
using System.Text.Json;

namespace dnd_helper_backend.DataAccess.Configurations
{
    public class CharacterConfiguration : IEntityTypeConfiguration<Character>
    {
        public void Configure(EntityTypeBuilder<Character> builder)
        {
            builder.HasKey(x => x.Id);

            builder.HasOne(x => x.User).WithMany(x => x.Characters);

            builder.Property(p => p.CharacterRace)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Race>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.SubRace)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<SubRace>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.CharacterClass)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Class>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.SubClass)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<SubClass>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.Background)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Background>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.Attacks)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Arms[]>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.Attributes)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Dictionary<string, int>>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.PreparedSpells)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Spell[]>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.KnownSpells)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Spell[]>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(p => p.Coins)
                .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Coins>(v, new JsonSerializerOptions()))
                .HasColumnType("jsonb");

            builder.Property(x => x.SavingThrows)
            .HasColumnType("text[]");
            builder.Property(x => x.SkillsProficiency)
            .HasColumnType("text[]");
            builder.Property(x => x.SkillsExpertise)
            .HasColumnType("text[]");

            builder.Property(x => x.Languages)
            .HasColumnType("text[]");
            builder.Property(x => x.Tools)
            .HasColumnType("text[]");
            builder.Property(x => x.Weapons)
            .HasColumnType("text[]");

            builder.Property(x => x.Equipment)
            .HasColumnType("text[]");

            builder.Property(x => x.Treasures)
            .HasColumnType("text[]");
            builder.Property(x => x.SpellSlots)
            .HasConversion(
                v => JsonSerializer.Serialize(v, new JsonSerializerOptions()),
                v => JsonSerializer.Deserialize<Dictionary<int, int>>(v, new JsonSerializerOptions()))
            .HasColumnType("jsonb");
        }
    }
}
