using System.Collections.Generic;
using System.Reflection.Emit;
using dnd_helper_backend.DataAccess.Configurations;
using dnd_helper_backend.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;

namespace dnd_helper_backend.DataAccess
{
    public class DndHelperDbContext : DbContext
    {
        public DbSet<UserEntity> Users { get; set; }
        public DndHelperDbContext(DbContextOptions<DndHelperDbContext> options)
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
