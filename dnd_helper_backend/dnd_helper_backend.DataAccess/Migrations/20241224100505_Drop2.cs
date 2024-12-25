using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class Drop2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Characters");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Characters",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    Age = table.Column<string>(type: "text", nullable: true),
                    AlliesAndOrganizations = table.Column<string>(type: "text", nullable: true),
                    ArmorClass = table.Column<int>(type: "integer", nullable: true),
                    Attacks = table.Column<string>(type: "jsonb", nullable: true),
                    Attributes = table.Column<string>(type: "jsonb", nullable: true),
                    Background = table.Column<string>(type: "jsonb", nullable: true),
                    Biography = table.Column<string>(type: "text", nullable: true),
                    Bonds = table.Column<string>(type: "text", nullable: true),
                    CharacterClass = table.Column<string>(type: "jsonb", nullable: true),
                    CharacterName = table.Column<string>(type: "text", nullable: true),
                    CharacterRace = table.Column<string>(type: "jsonb", nullable: true),
                    Coins = table.Column<string>(type: "jsonb", nullable: true),
                    Conditions = table.Column<string>(type: "text", nullable: true),
                    CurrentHitPoints = table.Column<int>(type: "integer", nullable: true),
                    DiceHit = table.Column<string>(type: "text", nullable: true),
                    Equipment = table.Column<string[]>(type: "text[]", nullable: true),
                    Exhausion = table.Column<int>(type: "integer", nullable: true),
                    Experience = table.Column<int>(type: "integer", nullable: true),
                    EyeColor = table.Column<string>(type: "text", nullable: true),
                    Flaws = table.Column<string>(type: "text", nullable: true),
                    HairColor = table.Column<string>(type: "text", nullable: true),
                    Height = table.Column<string>(type: "text", nullable: true),
                    Ideals = table.Column<string>(type: "text", nullable: true),
                    Ideology = table.Column<string>(type: "text", nullable: true),
                    Inspiration = table.Column<bool>(type: "boolean", nullable: true),
                    Languages = table.Column<string[]>(type: "text[]", nullable: true),
                    MaxHitPoints = table.Column<int>(type: "integer", nullable: true),
                    Notes = table.Column<string>(type: "text", nullable: true),
                    Purpose = table.Column<string>(type: "text", nullable: true),
                    SavingThrows = table.Column<string[]>(type: "text[]", nullable: true),
                    SkillsExpertise = table.Column<string[]>(type: "text[]", nullable: true),
                    SkillsProficiency = table.Column<string[]>(type: "text[]", nullable: true),
                    SkinColor = table.Column<string>(type: "text", nullable: true),
                    Speed = table.Column<int>(type: "integer", nullable: true),
                    SpellSlots = table.Column<string>(type: "jsonb", nullable: true),
                    SubClass = table.Column<string>(type: "jsonb", nullable: true),
                    SubRace = table.Column<string>(type: "jsonb", nullable: true),
                    TemporaryHitPoints = table.Column<int>(type: "integer", nullable: true),
                    Tools = table.Column<string[]>(type: "text[]", nullable: true),
                    Treasures = table.Column<string[]>(type: "text[]", nullable: true),
                    Weapons = table.Column<string[]>(type: "text[]", nullable: true),
                    Weight = table.Column<string>(type: "text", nullable: true),
                    knownSpells = table.Column<List<string>>(type: "text[]", nullable: true),
                    preparedSpells = table.Column<List<string>>(type: "text[]", nullable: true),
                    spellcastingAttribute = table.Column<string>(type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Characters", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Characters_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Characters_UserId",
                table: "Characters",
                column: "UserId");
        }
    }
}
