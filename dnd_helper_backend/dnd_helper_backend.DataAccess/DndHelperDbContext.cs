using dnd_helper_backend.Core.Models;
using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.DataAccess.Configurations;
using Microsoft.EntityFrameworkCore;
using dnd_helper_backend.Core.ValueObjects;

namespace dnd_helper_backend.DataAccess
{
    public class DndHelperDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Character> Characters { get; set; }
        //public DbSet<Armor> Armors { get; set; }
        //public DbSet<Race> Races { get; set; }
        //public DbSet<Arms> Arms { get; set; }
        //public DbSet<Background> Backgrounds { get; set; }
        //public DbSet<Attack> Attacks { get; set; }
        //public DbSet<SubRace> SubRaces { get; set; }
        //public DbSet<Class> Classes { get; set; }
        //public DbSet<SubClass> SubClasses { get; set; }
        public DndHelperDbContext(DbContextOptions<DndHelperDbContext> options)
        : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new UserConfiguration());
            modelBuilder.ApplyConfiguration(new CharacterConfiguration());
            //modelBuilder.ApplyConfiguration(new SubRaceConfiguration());
            //modelBuilder.ApplyConfiguration(new AttackConfiguration());
            //modelBuilder.ApplyConfiguration(new ArmorConfiguration());
            //modelBuilder.ApplyConfiguration(new ArmsConfiguration());
            //modelBuilder.ApplyConfiguration(new BackgroundConfiguration());
            //modelBuilder.ApplyConfiguration(new RaceConfiguration());
            //modelBuilder.ApplyConfiguration(new ClassConfiguration());
            //modelBuilder.ApplyConfiguration(new SubClassConfiguration());
        }
    }
}
