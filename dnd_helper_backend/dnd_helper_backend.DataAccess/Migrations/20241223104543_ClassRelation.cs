using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class ClassRelation : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Armors_Classes_ClassId",
                table: "Armors");

            migrationBuilder.DropForeignKey(
                name: "FK_Arms_Classes_ClassId",
                table: "Arms");

            migrationBuilder.DropIndex(
                name: "IX_Arms_ClassId",
                table: "Arms");

            migrationBuilder.DropIndex(
                name: "IX_Armors_ClassId",
                table: "Armors");

            migrationBuilder.DropColumn(
                name: "ClassId",
                table: "Arms");

            migrationBuilder.DropColumn(
                name: "ClassId",
                table: "Armors");

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

            migrationBuilder.CreateIndex(
                name: "IX_ArmorClass_ProficienciesArmorArmorId",
                table: "ArmorClass",
                column: "ProficienciesArmorArmorId");

            migrationBuilder.CreateIndex(
                name: "IX_ArmsClass_ProficienciesWeaponsId",
                table: "ArmsClass",
                column: "ProficienciesWeaponsId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ArmorClass");

            migrationBuilder.DropTable(
                name: "ArmsClass");

            migrationBuilder.AddColumn<Guid>(
                name: "ClassId",
                table: "Arms",
                type: "uuid",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "ClassId",
                table: "Armors",
                type: "uuid",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Arms_ClassId",
                table: "Arms",
                column: "ClassId");

            migrationBuilder.CreateIndex(
                name: "IX_Armors_ClassId",
                table: "Armors",
                column: "ClassId");

            migrationBuilder.AddForeignKey(
                name: "FK_Armors_Classes_ClassId",
                table: "Armors",
                column: "ClassId",
                principalTable: "Classes",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Arms_Classes_ClassId",
                table: "Arms",
                column: "ClassId",
                principalTable: "Classes",
                principalColumn: "Id");
        }
    }
}
