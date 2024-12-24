﻿// <auto-generated />
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using dnd_helper_backend.DataAccess;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    [DbContext(typeof(DndHelperDbContext))]
    [Migration("20241224072419_Test3")]
    partial class Test3
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "9.0.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Character", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Age")
                        .HasColumnType("text");

                    b.Property<string>("AlliesAndOrganizations")
                        .HasColumnType("text");

                    b.Property<int?>("ArmorClass")
                        .HasColumnType("integer");

                    b.Property<string>("Attacks")
                        .HasColumnType("jsonb");

                    b.Property<string>("Attributes")
                        .HasColumnType("jsonb");

                    b.Property<string>("Background")
                        .HasColumnType("jsonb");

                    b.Property<string>("Biography")
                        .HasColumnType("text");

                    b.Property<string>("Bonds")
                        .HasColumnType("text");

                    b.Property<string>("CharacterClass")
                        .HasColumnType("jsonb");

                    b.Property<string>("CharacterName")
                        .HasColumnType("text");

                    b.Property<string>("CharacterRace")
                        .HasColumnType("jsonb");

                    b.Property<string>("Coins")
                        .HasColumnType("jsonb");

                    b.Property<string>("Conditions")
                        .HasColumnType("text");

                    b.Property<int?>("CurrentHitPoints")
                        .HasColumnType("integer");

                    b.Property<string>("DiceHit")
                        .HasColumnType("text");

                    b.Property<string[]>("Equipment")
                        .HasColumnType("text[]");

                    b.Property<int?>("Exhausion")
                        .HasColumnType("integer");

                    b.Property<int?>("Experience")
                        .HasColumnType("integer");

                    b.Property<string>("EyeColor")
                        .HasColumnType("text");

                    b.Property<string>("Flaws")
                        .HasColumnType("text");

                    b.Property<string>("HairColor")
                        .HasColumnType("text");

                    b.Property<string>("Height")
                        .HasColumnType("text");

                    b.Property<string>("Ideals")
                        .HasColumnType("text");

                    b.Property<string>("Ideology")
                        .HasColumnType("text");

                    b.Property<bool?>("Inspiration")
                        .HasColumnType("boolean");

                    b.Property<string[]>("Languages")
                        .HasColumnType("text[]");

                    b.Property<int?>("MaxHitPoints")
                        .HasColumnType("integer");

                    b.Property<string>("Notes")
                        .HasColumnType("text");

                    b.Property<string>("Purpose")
                        .HasColumnType("text");

                    b.Property<string[]>("SavingThrows")
                        .HasColumnType("text[]");

                    b.Property<string[]>("SkillsExpertise")
                        .HasColumnType("text[]");

                    b.Property<string[]>("SkillsProficiency")
                        .HasColumnType("text[]");

                    b.Property<string>("SkinColor")
                        .HasColumnType("text");

                    b.Property<int?>("Speed")
                        .HasColumnType("integer");

                    b.Property<string>("SpellSlots")
                        .HasColumnType("jsonb");

                    b.Property<string>("SubClass")
                        .HasColumnType("jsonb");

                    b.Property<string>("SubRace")
                        .HasColumnType("jsonb");

                    b.Property<int?>("TemporaryHitPoints")
                        .HasColumnType("integer");

                    b.Property<string[]>("Tools")
                        .HasColumnType("text[]");

                    b.Property<string[]>("Treasures")
                        .HasColumnType("text[]");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uuid");

                    b.Property<string[]>("Weapons")
                        .HasColumnType("text[]");

                    b.Property<string>("Weight")
                        .HasColumnType("text");

                    b.PrimitiveCollection<List<string>>("knownSpells")
                        .HasColumnType("text[]");

                    b.PrimitiveCollection<List<string>>("preparedSpells")
                        .HasColumnType("text[]");

                    b.Property<string>("spellcastingAttribute")
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("Characters");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.User", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("PassHash")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Character", b =>
                {
                    b.HasOne("dnd_helper_backend.Core.Models.User", "User")
                        .WithMany("Characters")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("User");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.User", b =>
                {
                    b.Navigation("Characters");
                });
#pragma warning restore 612, 618
        }
    }
}