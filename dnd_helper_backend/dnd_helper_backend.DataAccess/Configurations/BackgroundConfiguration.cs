//using dnd_helper_backend.Core.Enums;
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
//    public class BackgroundConfiguration : IEntityTypeConfiguration<Background>
//    {
//        public void Configure(EntityTypeBuilder<Background> builder)
//        {
//            builder.HasKey(x => x.Id);
//            builder.Property(x => x.Name).IsRequired();
//            builder.Property(x => x.Equipment).IsRequired();
//            builder.Property(x => x.ToolProficiencies).IsRequired();
//            builder.Property(x => x.SkillProficiencies).IsRequired();
//            builder.Property(x => x.Description).IsRequired();

//            builder.Property(x => x.SkillProficiencies)
//            .HasColumnType("text[]") // Тип массива в PostgreSQL
//            .HasConversion(
//                v => v.Select(r => r.ToString()).ToArray(), // Преобразование List в массив
//                v => v.Select(r => Enum.Parse<Skills>(r)).ToList()   // Преобразование массива обратно в List
//            );
//        }
//    }
//}
