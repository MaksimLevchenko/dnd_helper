//using dnd_helper_backend.Core.ValueObjects;
//using Microsoft.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore.Metadata.Builders;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace dnd_helper_backend.DataAccess.Configurations
//{
//    public class ArmsConfiguration : IEntityTypeConfiguration<Arms>
//    {
//        public void Configure(EntityTypeBuilder<Arms> builder)
//        {
//            builder.OwnsOne(x => x.Price, ownedNavigationBuilder =>
//            {
//                ownedNavigationBuilder.ToJson();
//            });

//            builder.HasKey(x => x.Id);
//            builder.Property(x => x.Name).IsRequired();
//            builder.Property(x => x.IsMelee).IsRequired();
//            builder.Property(x => x.IsSimple).IsRequired();
//            builder.Property(x => x.Damage).HasConversion<string>().IsRequired();
//            builder.Property(x => x.DamageType).HasConversion<string>().IsRequired();
//            builder.Property(x => x.Weight).IsRequired();

//            builder.Property(x => x.ArmsFeatures)
//            .HasColumnType("text[]") // Тип массива в PostgreSQL
//            .HasConversion(
//                v => v.ToArray(), // Преобразование List в массив
//                v => v.ToList()   // Преобразование массива обратно в List
//            );

//        }
//    }
//}
