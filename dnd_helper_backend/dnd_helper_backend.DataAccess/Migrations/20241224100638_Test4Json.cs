using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class Test4Json : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Characters",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    CharacterName = table.Column<string>(type: "text", nullable: true),
                    CharacterRace = table.Column<string>(type: "jsonb", nullable: true),
                    SubRace = table.Column<string>(type: "jsonb", nullable: true),
                    CharacterClass = table.Column<string>(type: "jsonb", nullable: true),
                    SubClass = table.Column<string>(type: "jsonb", nullable: true),
                    Background = table.Column<string>(type: "jsonb", nullable: true),
                    Experience = table.Column<int>(type: "integer", nullable: false),
                    DiceHit = table.Column<string>(type: "text", nullable: true),
                    MaxHitPoints = table.Column<int>(type: "integer", nullable: true),
                    CurrentHitPoints = table.Column<int>(type: "integer", nullable: true),
                    TemporaryHitPoints = table.Column<int>(type: "integer", nullable: true),
                    Speed = table.Column<int>(type: "integer", nullable: true),
                    ArmorClass = table.Column<int>(type: "integer", nullable: true),
                    Inspiration = table.Column<bool>(type: "boolean", nullable: false),
                    Conditions = table.Column<string>(type: "text", nullable: true),
                    Exhaustion = table.Column<int>(type: "integer", nullable: true),
                    Attributes = table.Column<string>(type: "jsonb", nullable: true),
                    SavingThrows = table.Column<string[]>(type: "text[]", nullable: true),
                    SkillsProficiency = table.Column<string[]>(type: "text[]", nullable: true),
                    SkillsExpertise = table.Column<string[]>(type: "text[]", nullable: true),
                    Attacks = table.Column<string>(type: "jsonb", nullable: true),
                    PreparedSpells = table.Column<string>(type: "jsonb", nullable: true),
                    KnownSpells = table.Column<string>(type: "jsonb", nullable: true),
                    SpellcastingAttribute = table.Column<string>(type: "text", nullable: true),
                    SpellSlots = table.Column<string>(type: "jsonb", nullable: true),
                    Languages = table.Column<string[]>(type: "text[]", nullable: true),
                    Tools = table.Column<string[]>(type: "text[]", nullable: true),
                    Weapons = table.Column<string[]>(type: "text[]", nullable: true),
                    Ideology = table.Column<string>(type: "text", nullable: true),
                    Biography = table.Column<string>(type: "text", nullable: true),
                    Weight = table.Column<string>(type: "text", nullable: true),
                    Height = table.Column<string>(type: "text", nullable: true),
                    Age = table.Column<string>(type: "text", nullable: true),
                    HairColor = table.Column<string>(type: "text", nullable: true),
                    EyeColor = table.Column<string>(type: "text", nullable: true),
                    SkinColor = table.Column<string>(type: "text", nullable: true),
                    AlliesAndOrganizations = table.Column<string>(type: "text", nullable: true),
                    Purpose = table.Column<string>(type: "text", nullable: true),
                    Ideals = table.Column<string>(type: "text", nullable: true),
                    Bonds = table.Column<string>(type: "text", nullable: true),
                    Flaws = table.Column<string>(type: "text", nullable: true),
                    Notes = table.Column<string>(type: "text", nullable: true),
                    Coins = table.Column<string>(type: "jsonb", nullable: true),
                    Equipment = table.Column<string[]>(type: "text[]", nullable: true),
                    Treasures = table.Column<string[]>(type: "text[]", nullable: true)
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

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Characters");
        }
    }
}
