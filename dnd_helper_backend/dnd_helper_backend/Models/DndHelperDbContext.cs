using dnd_helper_backend.Configuration;
using Microsoft.EntityFrameworkCore;

namespace dnd_helper_backend.Models
{
    public class DndHelperDbContext: DbContext
    {
        public DbSet<User> Users { get; set; }
        public DndHelperDbContext (DbContextOptions<DndHelperDbContext> options)
            : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new UserConfiguration());
            base.OnModelCreating(modelBuilder);
        }
    }
}
