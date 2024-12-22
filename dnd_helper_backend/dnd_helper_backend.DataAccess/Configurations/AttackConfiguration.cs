using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Configurations
{
    public class AttackConfiguration : IEntityTypeConfiguration<Attack>
    {
        public void Configure(EntityTypeBuilder<Attack> builder)
        {
            builder.HasKey(x => x.Id);
            builder.Property(x => x.Name).IsRequired();
            builder.Property(x => x.Damage).HasConversion<string>().IsRequired();
            builder.Property(x => x.Range).IsRequired();
            builder.Property(x => x.DamageType).HasConversion<string>().IsRequired();
            builder.Property(x => x.ActionCost).HasConversion<string>().IsRequired();
        }
    }
}
