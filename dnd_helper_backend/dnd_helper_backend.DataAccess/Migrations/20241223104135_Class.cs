using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class Class : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "ClassId",
                table: "Arms",
                type: "uuid",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Price",
                table: "Armors",
                type: "jsonb",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "jsonb");

            migrationBuilder.AddColumn<Guid>(
                name: "ClassId",
                table: "Armors",
                type: "uuid",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Classes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    SavingThrows = table.Column<string[]>(type: "text[]", nullable: false),
                    HitDice = table.Column<string>(type: "text", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    Source = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Classes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SubClasses",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    ClassId = table.Column<Guid>(type: "uuid", nullable: false)
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

            migrationBuilder.CreateIndex(
                name: "IX_Arms_ClassId",
                table: "Arms",
                column: "ClassId");

            migrationBuilder.CreateIndex(
                name: "IX_Armors_ClassId",
                table: "Armors",
                column: "ClassId");

            migrationBuilder.CreateIndex(
                name: "IX_SubClasses_ClassId",
                table: "SubClasses",
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

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Armors_Classes_ClassId",
                table: "Armors");

            migrationBuilder.DropForeignKey(
                name: "FK_Arms_Classes_ClassId",
                table: "Arms");

            migrationBuilder.DropTable(
                name: "SubClasses");

            migrationBuilder.DropTable(
                name: "Classes");

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

            migrationBuilder.AlterColumn<string>(
                name: "Price",
                table: "Armors",
                type: "jsonb",
                nullable: false,
                defaultValue: "{}",
                oldClrType: typeof(string),
                oldType: "jsonb",
                oldNullable: true);
        }
    }
}
