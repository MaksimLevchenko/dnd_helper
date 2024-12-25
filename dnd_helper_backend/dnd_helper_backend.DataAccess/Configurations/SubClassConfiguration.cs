//using dnd_helper_backend.Core.ValueObjects;
//using Microsoft.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore.Metadata.Builders;

//namespace dnd_helper_backend.DataAccess.Configurations
//{
//    public class SubClassConfiguration : IEntityTypeConfiguration<SubClass>
//    {
//        public void Configure(EntityTypeBuilder<SubClass> builder)
//        {
//            builder.HasKey(x => x.Id);
//            builder.HasOne(x => x.Class).WithMany(x => x.SubClasses);
//        }
//    }
//}
