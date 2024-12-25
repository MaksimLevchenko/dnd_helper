using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class Test : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Characters_Backgrounds_BackgroundId",
                table: "Characters");

            migrationBuilder.DropForeignKey(
                name: "FK_Characters_Classes_CharacterClassId",
                table: "Characters");

            migrationBuilder.DropForeignKey(
                name: "FK_Characters_Races_CharacterRaceRaceId",
                table: "Characters");

            migrationBuilder.DropForeignKey(
                name: "FK_Characters_SubClasses_SubClassId",
                table: "Characters");

            migrationBuilder.DropForeignKey(
                name: "FK_Characters_SubRaces_SubRaceId",
                table: "Characters");

            migrationBuilder.DropTable(
                name: "ArmorClass");

            migrationBuilder.DropTable(
                name: "ArmsCharacter");

            migrationBuilder.DropTable(
                name: "ArmsClass");

            migrationBuilder.DropTable(
                name: "Attacks");

            migrationBuilder.DropTable(
                name: "Backgrounds");

            migrationBuilder.DropTable(
                name: "SubClasses");

            migrationBuilder.DropTable(
                name: "SubRaces");

            migrationBuilder.DropTable(
                name: "Armors");

            migrationBuilder.DropTable(
                name: "Arms");

            migrationBuilder.DropTable(
                name: "Classes");

            migrationBuilder.DropTable(
                name: "Races");

            migrationBuilder.DropIndex(
                name: "IX_Characters_BackgroundId",
                table: "Characters");

            migrationBuilder.DropIndex(
                name: "IX_Characters_CharacterClassId",
                table: "Characters");

            migrationBuilder.DropIndex(
                name: "IX_Characters_CharacterRaceRaceId",
                table: "Characters");

            migrationBuilder.DropIndex(
                name: "IX_Characters_SubClassId",
                table: "Characters");

            migrationBuilder.DropIndex(
                name: "IX_Characters_SubRaceId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "BackgroundId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "CharacterClassId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "CharacterRaceRaceId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "SubClassId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "SubRaceId",
                table: "Characters");

            migrationBuilder.RenameColumn(
                name: "ideology",
                table: "Characters",
                newName: "Ideology");

            migrationBuilder.AlterColumn<string>(
                name: "Ideology",
                table: "Characters",
                type: "text",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "text");

            migrationBuilder.AddColumn<string>(
                name: "Attacks",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Background",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "CharacterClass",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "CharacterRace",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "SubClass",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "SubRace",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Attacks",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "Background",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "CharacterClass",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "CharacterRace",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "SubClass",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "SubRace",
                table: "Characters");

            migrationBuilder.RenameColumn(
                name: "Ideology",
                table: "Characters",
                newName: "ideology");

            migrationBuilder.AlterColumn<string>(
                name: "ideology",
                table: "Characters",
                type: "text",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "text",
                oldNullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "BackgroundId",
                table: "Characters",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "CharacterClassId",
                table: "Characters",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "CharacterRaceRaceId",
                table: "Characters",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "SubClassId",
                table: "Characters",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "SubRaceId",
                table: "Characters",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateTable(
                name: "Armors",
                columns: table => new
                {
                    ArmorId = table.Column<Guid>(type: "uuid", nullable: false),
                    ArmorClass = table.Column<int>(type: "integer", nullable: false),
                    ArmorType = table.Column<string>(type: "text", nullable: false),
                    GrantsDexerityBonus = table.Column<bool>(type: "boolean", nullable: false),
                    MaxDexterityBonus = table.Column<int>(type: "integer", nullable: false),
                    MinStrength = table.Column<int>(type: "integer", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    StelsDisadvantage = table.Column<bool>(type: "boolean", nullable: false),
                    Weight = table.Column<int>(type: "integer", nullable: false),
                    Price = table.Column<string>(type: "jsonb", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Armors", x => x.ArmorId);
                });

            migrationBuilder.CreateTable(
                name: "Arms",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    ArmsFeatures = table.Column<string[]>(type: "text[]", nullable: false),
                    Damage = table.Column<string>(type: "text", nullable: false),
                    DamageType = table.Column<string>(type: "text", nullable: false),
                    IsMelee = table.Column<bool>(type: "boolean", nullable: false),
                    IsSimple = table.Column<bool>(type: "boolean", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Weight = table.Column<double>(type: "double precision", nullable: false),
                    Price = table.Column<string>(type: "jsonb", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Arms", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Attacks",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    ActionCost = table.Column<string>(type: "text", nullable: false),
                    Damage = table.Column<string>(type: "text", nullable: false),
                    DamageType = table.Column<string>(type: "text", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Range = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Attacks", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Backgrounds",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    Equipment = table.Column<string>(type: "text", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    SkillProficiencies = table.Column<string[]>(type: "text[]", nullable: false),
                    ToolProficiencies = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Backgrounds", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Classes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    HitDice = table.Column<string>(type: "text", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    SavingThrows = table.Column<string[]>(type: "text[]", nullable: false),
                    Source = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Classes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Races",
                columns: table => new
                {
                    RaceId = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    RaceFeatures = table.Column<string>(type: "jsonb", nullable: false),
                    Skills = table.Column<string[]>(type: "text[]", nullable: false),
                    Attributes = table.Column<string>(type: "jsonb", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Races", x => x.RaceId);
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

            migrationBuilder.CreateTable(
                name: "ArmorClass",
                columns: table => new
                {
                    ClassId = table.Column<Guid>(type: "uuid", nullable: false),
                    ProficienciesArmorArmorId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArmorClass", x => new { x.ClassId, x.ProficienciesArmorArmorId });
                    table.ForeignKey(
                        name: "FK_ArmorClass_Armors_ProficienciesArmorArmorId",
                        column: x => x.ProficienciesArmorArmorId,
                        principalTable: "Armors",
                        principalColumn: "ArmorId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ArmorClass_Classes_ClassId",
                        column: x => x.ClassId,
                        principalTable: "Classes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ArmsClass",
                columns: table => new
                {
                    ClassId = table.Column<Guid>(type: "uuid", nullable: false),
                    ProficienciesWeaponsId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArmsClass", x => new { x.ClassId, x.ProficienciesWeaponsId });
                    table.ForeignKey(
                        name: "FK_ArmsClass_Arms_ProficienciesWeaponsId",
                        column: x => x.ProficienciesWeaponsId,
                        principalTable: "Arms",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ArmsClass_Classes_ClassId",
                        column: x => x.ClassId,
                        principalTable: "Classes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "SubClasses",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    ClassId = table.Column<Guid>(type: "uuid", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubClasses", x => x.Id);
                    table.ForeignKey(
                        name: "FK_SubClasses_Classes_ClassId",
                        column: x => x.ClassId,
                        principalTable: "Classes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "SubRaces",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    RaceId = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    SubraceFeatures = table.Column<string>(type: "jsonb", nullable: false),
                    Attributes = table.Column<string>(type: "jsonb", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubRaces", x => x.Id);
                    table.ForeignKey(
                        name: "FK_SubRaces_Races_RaceId",
                        column: x => x.RaceId,
                        principalTable: "Races",
                        principalColumn: "RaceId",
                        onDelete: ReferentialAction.Cascade);
                });

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
                name: "IX_ArmorClass_ProficienciesArmorArmorId",
                table: "ArmorClass",
                column: "ProficienciesArmorArmorId");

            migrationBuilder.CreateIndex(
                name: "IX_ArmsCharacter_CharacterId",
                table: "ArmsCharacter",
                column: "CharacterId");

            migrationBuilder.CreateIndex(
                name: "IX_ArmsClass_ProficienciesWeaponsId",
                table: "ArmsClass",
                column: "ProficienciesWeaponsId");

            migrationBuilder.CreateIndex(
                name: "IX_SubClasses_ClassId",
                table: "SubClasses",
                column: "ClassId");

            migrationBuilder.CreateIndex(
                name: "IX_SubRaces_RaceId",
                table: "SubRaces",
                column: "RaceId");

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_Backgrounds_BackgroundId",
                table: "Characters",
                column: "BackgroundId",
                principalTable: "Backgrounds",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_Classes_CharacterClassId",
                table: "Characters",
                column: "CharacterClassId",
                principalTable: "Classes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_Races_CharacterRaceRaceId",
                table: "Characters",
                column: "CharacterRaceRaceId",
                principalTable: "Races",
                principalColumn: "RaceId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_SubClasses_SubClassId",
                table: "Characters",
                column: "SubClassId",
                principalTable: "SubClasses",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_SubRaces_SubRaceId",
                table: "Characters",
                column: "SubRaceId",
                principalTable: "SubRaces",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
