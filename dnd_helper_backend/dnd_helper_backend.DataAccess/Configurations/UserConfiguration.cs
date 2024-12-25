using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Configurations
{
    public class UserConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            builder.HasKey(x => x.Id);
            builder.Property(x => x.Email).IsRequired();
            builder.Property(x => x.PassHash).IsRequired();
            builder.Property(x => x.Username).IsRequired();
            //builder.HasMany(x => x.Characters).WithOne(x => x.User);
        }
    }
}
