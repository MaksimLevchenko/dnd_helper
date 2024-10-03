using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using dnd_helper_backend.Models;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace dnd_helper_backend.Configuration
{
    public class UserConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            builder.HasKey(x => x.UserId);
            builder.Property(x => x.Email).IsRequired();
            builder.Property(x => x.passHash).IsRequired();
            builder.Property(x => x.UserName).IsRequired();
        }
    }
}
