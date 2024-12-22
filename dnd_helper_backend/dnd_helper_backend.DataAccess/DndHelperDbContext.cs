using System.Collections.Generic;
using System.Reflection.Emit;
using dnd_helper_backend.Core.Models;
using dnd_helper_backend.DataAccess.Configurations;
using dnd_helper_backend.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;

namespace dnd_helper_backend.DataAccess
{
    public class DndHelperDbContext : DbContext
    {
        public DbSet<UserEntity> Users { get; set; }
        public DbSet<ArmorEntity> Armors { get; set; }
        public DbSet<Race> Races { get; set; }
        public DbSet<Arms> Arms { get; set; }
        public DbSet<Background> Backgrounds { get; set; }
        public DndHelperDbContext(DbContextOptions<DndHelperDbContext> options)
        : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new UserConfiguration());
            modelBuilder.ApplyConfiguration(new ArmorConfiguration());
            modelBuilder.ApplyConfiguration(new ArmsConfiguration());
            modelBuilder.ApplyConfiguration(new BackgroundConfiguration());
            modelBuilder.ApplyConfiguration(new RaceConfiguration());
            base.OnModelCreating(modelBuilder);
        }
    }
}
