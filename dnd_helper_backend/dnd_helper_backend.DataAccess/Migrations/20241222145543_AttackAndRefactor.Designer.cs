﻿// <auto-generated />
using System;
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
    [Migration("20241222145543_AttackAndRefactor")]
    partial class AttackAndRefactor
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "9.0.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Arms", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string[]>("ArmsFeatures")
                        .IsRequired()
                        .HasColumnType("text[]");

                    b.Property<string>("Damage")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("DamageType")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<bool>("IsMelee")
                        .HasColumnType("boolean");

                    b.Property<bool>("IsSimple")
                        .HasColumnType("boolean");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<double>("Weight")
                        .HasColumnType("double precision");

                    b.HasKey("Id");

                    b.ToTable("Arms");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Attack", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("ActionCost")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Damage")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("DamageType")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<int>("Range")
                        .HasColumnType("integer");

                    b.HasKey("Id");

                    b.ToTable("Attacks");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Background", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Equipment")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string[]>("SkillProficiencies")
                        .IsRequired()
                        .HasColumnType("text[]");

                    b.Property<string>("ToolProficiencies")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.ToTable("Backgrounds");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Race", b =>
                {
                    b.Property<Guid>("RaceId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("RaceFeatures")
                        .IsRequired()
                        .HasColumnType("jsonb");

                    b.Property<string[]>("Skills")
                        .IsRequired()
                        .HasColumnType("text[]");

                    b.HasKey("RaceId");

                    b.ToTable("Races");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.SubRace", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<Guid>("RaceId")
                        .HasColumnType("uuid");

                    b.Property<string>("SubraceFeatures")
                        .IsRequired()
                        .HasColumnType("jsonb");

                    b.HasKey("Id");

                    b.HasIndex("RaceId");

                    b.ToTable("SubRaces");
                });

            modelBuilder.Entity("dnd_helper_backend.DataAccess.Entities.ArmorEntity", b =>
                {
                    b.Property<Guid>("ArmorId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<int>("ArmorClass")
                        .HasColumnType("integer");

                    b.Property<string>("ArmorType")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<bool>("GrantsDexerityBonus")
                        .HasColumnType("boolean");

                    b.Property<int>("MaxDexterityBonus")
                        .HasColumnType("integer");

                    b.Property<int>("MinStrength")
                        .HasColumnType("integer");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<bool>("StelsDisadvantage")
                        .HasColumnType("boolean");

                    b.Property<int>("Weight")
                        .HasColumnType("integer");

                    b.HasKey("ArmorId");

                    b.ToTable("Armors");
                });

            modelBuilder.Entity("dnd_helper_backend.DataAccess.Entities.UserEntity", b =>
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

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Arms", b =>
                {
                    b.OwnsOne("dnd_helper_backend.Core.ValueObjects.Coins", "Price", b1 =>
                        {
                            b1.Property<Guid>("ArmsId")
                                .HasColumnType("uuid");

                            b1.Property<int>("Copper")
                                .HasColumnType("integer");

                            b1.Property<int>("Electrum")
                                .HasColumnType("integer");

                            b1.Property<int>("Golden")
                                .HasColumnType("integer");

                            b1.Property<int>("Platinum")
                                .HasColumnType("integer");

                            b1.Property<int>("Silver")
                                .HasColumnType("integer");

                            b1.HasKey("ArmsId");

                            b1.ToTable("Arms");

                            b1.ToJson("Price");

                            b1.WithOwner()
                                .HasForeignKey("ArmsId");
                        });

                    b.Navigation("Price");
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Race", b =>
                {
                    b.OwnsOne("dnd_helper_backend.Core.ValueObjects.Attributes", "Attributes", b1 =>
                        {
                            b1.Property<Guid>("RaceId")
                                .HasColumnType("uuid");

                            b1.Property<int>("Charisma")
                                .HasColumnType("integer");

                            b1.Property<int>("Constitution")
                                .HasColumnType("integer");

                            b1.Property<int>("Dexterity")
                                .HasColumnType("integer");

                            b1.Property<int>("Intelligence")
                                .HasColumnType("integer");

                            b1.Property<int>("Strength")
                                .HasColumnType("integer");

                            b1.Property<int>("Wisdom")
                                .HasColumnType("integer");

                            b1.HasKey("RaceId");

                            b1.ToTable("Races");

                            b1.ToJson("Attributes");

                            b1.WithOwner()
                                .HasForeignKey("RaceId");
                        });

                    b.Navigation("Attributes")
                        .IsRequired();
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.SubRace", b =>
                {
                    b.HasOne("dnd_helper_backend.Core.Models.Race", "Race")
                        .WithMany("SubRaces")
                        .HasForeignKey("RaceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.OwnsOne("dnd_helper_backend.Core.ValueObjects.Attributes", "Attributes", b1 =>
                        {
                            b1.Property<Guid>("SubRaceId")
                                .HasColumnType("uuid");

                            b1.Property<int>("Charisma")
                                .HasColumnType("integer");

                            b1.Property<int>("Constitution")
                                .HasColumnType("integer");

                            b1.Property<int>("Dexterity")
                                .HasColumnType("integer");

                            b1.Property<int>("Intelligence")
                                .HasColumnType("integer");

                            b1.Property<int>("Strength")
                                .HasColumnType("integer");

                            b1.Property<int>("Wisdom")
                                .HasColumnType("integer");

                            b1.HasKey("SubRaceId");

                            b1.ToTable("SubRaces");

                            b1.ToJson("Attributes");

                            b1.WithOwner()
                                .HasForeignKey("SubRaceId");
                        });

                    b.Navigation("Attributes")
                        .IsRequired();

                    b.Navigation("Race");
                });

            modelBuilder.Entity("dnd_helper_backend.DataAccess.Entities.ArmorEntity", b =>
                {
                    b.OwnsOne("dnd_helper_backend.DataAccess.Aggregates.CoinsAgg", "Price", b1 =>
                        {
                            b1.Property<Guid>("ArmorEntityArmorId")
                                .HasColumnType("uuid");

                            b1.Property<int>("Copper")
                                .HasColumnType("integer");

                            b1.Property<int>("Electrum")
                                .HasColumnType("integer");

                            b1.Property<int>("Golden")
                                .HasColumnType("integer");

                            b1.Property<int>("Platinum")
                                .HasColumnType("integer");

                            b1.Property<int>("Silver")
                                .HasColumnType("integer");

                            b1.HasKey("ArmorEntityArmorId");

                            b1.ToTable("Armors");

                            b1.ToJson("Price");

                            b1.WithOwner()
                                .HasForeignKey("ArmorEntityArmorId");
                        });

                    b.Navigation("Price")
                        .IsRequired();
                });

            modelBuilder.Entity("dnd_helper_backend.Core.Models.Race", b =>
                {
                    b.Navigation("SubRaces");
                });
#pragma warning restore 612, 618
        }
    }
}