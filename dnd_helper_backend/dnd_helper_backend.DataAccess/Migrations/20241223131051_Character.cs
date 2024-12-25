using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class Character : Migration
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
                    CharacterName = table.Column<string>(type: "text", nullable: false),
                    CharacterRaceRaceId = table.Column<Guid>(type: "uuid", nullable: false),
                    SubRaceId = table.Column<Guid>(type: "uuid", nullable: false),
                    CharacterClassId = table.Column<Guid>(type: "uuid", nullable: false),
                    SubClassId = table.Column<Guid>(type: "uuid", nullable: false),
                    BackgroundId = table.Column<Guid>(type: "uuid", nullable: false),
                    Experience = table.Column<int>(type: "integer", nullable: false),
                    DiceHit = table.Column<string>(type: "text", nullable: false),
                    MaxHitPoints = table.Column<int>(type: "integer", nullable: false),
                    CurrentHitPoints = table.Column<int>(type: "integer", nullable: false),
                    TemporaryHitPoints = table.Column<int>(type: "integer", nullable: false),
                    Speed = table.Column<int>(type: "integer", nullable: false),
                    ArmorClass = table.Column<int>(type: "integer", nullable: false),
                    Inspiration = table.Column<bool>(type: "boolean", nullable: false),
                    Conditions = table.Column<string>(type: "text", nullable: false),
                    Exhausion = table.Column<int>(type: "integer", nullable: false),
                    SavingThrows = table.Column<string[]>(type: "text[]", nullable: false),
                    SkillsProficiency = table.Column<string[]>(type: "text[]", nullable: false),
                    SkillsExpertise = table.Column<string[]>(type: "text[]", nullable: false),
                    Languages = table.Column<List<string>>(type: "text[]", nullable: false),
                    Tools = table.Column<List<string>>(type: "text[]", nullable: false),
                    Weapons = table.Column<List<string>>(type: "text[]", nullable: false),
                    ideology = table.Column<string>(type: "text", nullable: false),
                    Biography = table.Column<string>(type: "text", nullable: false),
                    Weight = table.Column<string>(type: "text", nullable: false),
                    Height = table.Column<string>(type: "text", nullable: false),
                    Age = table.Column<string>(type: "text", nullable: false),
                    HairColor = table.Column<string>(type: "text", nullable: false),
                    EyeColor = table.Column<string>(type: "text", nullable: false),
                    SkinColor = table.Column<string>(type: "text", nullable: false),
                    AlliesAndOrganizations = table.Column<string>(type: "text", nullable: false),
                    Purpose = table.Column<string>(type: "text", nullable: false),
                    Ideals = table.Column<string>(type: "text", nullable: false),
                    Bonds = table.Column<string>(type: "text", nullable: false),
                    Flaws = table.Column<string>(type: "text", nullable: false),
                    Notes = table.Column<string>(type: "text", nullable: false),
                    Equipment = table.Column<List<string>>(type: "text[]", nullable: false),
                    Treasures = table.Column<List<string>>(type: "text[]", nullable: false),
                    Attributes = table.Column<string>(type: "jsonb", nullable: false),
                    Coins = table.Column<string>(type: "jsonb", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Characters", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Characters_Backgrounds_BackgroundId",
                        column: x => x.BackgroundId,
                        principalTable: "Backgrounds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Characters_Classes_CharacterClassId",
                        column: x => x.CharacterClassId,
                        principalTable: "Classes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Characters_Races_CharacterRaceRaceId",
                        column: x => x.CharacterRaceRaceId,
                        principalTable: "Races",
                        principalColumn: "RaceId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Characters_SubClasses_SubClassId",
                        column: x => x.SubClassId,
                        principalTable: "SubClasses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Characters_SubRaces_SubRaceId",
                        column: x => x.SubRaceId,
                        principalTable: "SubRaces",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Characters_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ArmsCharacter",
                columns: table => new
                {
                    AttacksId = table.Column<Guid>(type: "uuid", nullable: false),
                    CharacterId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArmsCharacter", x => new { x.AttacksId, x.CharacterId });
                    table.ForeignKey(
                        name: "FK_ArmsCharacter_Arms_AttacksId",
                        column: x => x.AttacksId,
                        principalTable: "Arms",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ArmsCharacter_Characters_CharacterId",
                        column: x => x.CharacterId,
                        principalTable: "Characters",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ArmsCharacter_CharacterId",
                table: "ArmsCharacter",
                column: "CharacterId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_BackgroundId",
                table: "Characters",
                column: "BackgroundId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_CharacterClassId",
                table: "Characters",
                column: "CharacterClassId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_CharacterRaceRaceId",
                table: "Characters",
                column: "CharacterRaceRaceId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_SubClassId",
                table: "Characters",
                column: "SubClassId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_SubRaceId",
                table: "Characters",
                column: "SubRaceId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_UserId",
                table: "Characters",
                column: "UserId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ArmsCharacter");

            migrationBuilder.DropTable(
                name: "Characters");
        }
    }
}
