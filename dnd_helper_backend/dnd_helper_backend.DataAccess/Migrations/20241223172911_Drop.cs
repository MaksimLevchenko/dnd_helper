using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class Drop : Migration
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
                    Age = table.Column<string>(type: "text", nullable: false),
                    AlliesAndOrganizations = table.Column<string>(type: "text", nullable: false),
                    ArmorClass = table.Column<int>(type: "integer", nullable: false),
                    Attacks = table.Column<string>(type: "text", nullable: false),
                    Background = table.Column<string>(type: "text", nullable: false),
                    Biography = table.Column<string>(type: "text", nullable: false),
                    Bonds = table.Column<string>(type: "text", nullable: false),
                    CharacterClass = table.Column<string>(type: "text", nullable: false),
                    CharacterName = table.Column<string>(type: "text", nullable: false),
                    CharacterRace = table.Column<string>(type: "text", nullable: false),
                    Conditions = table.Column<string>(type: "text", nullable: false),
                    CurrentHitPoints = table.Column<int>(type: "integer", nullable: false),
                    DiceHit = table.Column<string>(type: "text", nullable: false),
                    Equipment = table.Column<string[]>(type: "text[]", nullable: false),
                    Exhausion = table.Column<int>(type: "integer", nullable: false),
                    Experience = table.Column<int>(type: "integer", nullable: false),
                    EyeColor = table.Column<string>(type: "text", nullable: false),
                    Flaws = table.Column<string>(type: "text", nullable: false),
                    HairColor = table.Column<string>(type: "text", nullable: false),
                    Height = table.Column<string>(type: "text", nullable: false),
                    Ideals = table.Column<string>(type: "text", nullable: false),
                    Ideology = table.Column<string>(type: "text", nullable: true),
                    Inspiration = table.Column<bool>(type: "boolean", nullable: false),
                    Languages = table.Column<string[]>(type: "text[]", nullable: false),
                    MaxHitPoints = table.Column<int>(type: "integer", nullable: false),
                    Notes = table.Column<string>(type: "text", nullable: false),
                    Purpose = table.Column<string>(type: "text", nullable: false),
                    SavingThrows = table.Column<string[]>(type: "text[]", nullable: false),
                    SkillsExpertise = table.Column<string[]>(type: "text[]", nullable: false),
                    SkillsProficiency = table.Column<string[]>(type: "text[]", nullable: false),
                    SkinColor = table.Column<string>(type: "text", nullable: false),
                    Speed = table.Column<int>(type: "integer", nullable: false),
                    SubClass = table.Column<string>(type: "text", nullable: false),
                    SubRace = table.Column<string>(type: "text", nullable: false),
                    TemporaryHitPoints = table.Column<int>(type: "integer", nullable: false),
                    Tools = table.Column<string[]>(type: "text[]", nullable: false),
                    Treasures = table.Column<string[]>(type: "text[]", nullable: false),
                    Weapons = table.Column<string[]>(type: "text[]", nullable: false),
                    Weight = table.Column<string>(type: "text", nullable: false),
                    Attributes = table.Column<string>(type: "jsonb", nullable: false),
                    Coins = table.Column<string>(type: "jsonb", nullable: false)
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
