using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace dnd_helper_backend.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class ArmorEntity : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Armors",
                columns: table => new
                {
                    ArmorId = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    ArmorClass = table.Column<int>(type: "integer", nullable: false),
                    GrantsDexerityBonus = table.Column<bool>(type: "boolean", nullable: false),
                    MaxDexterityBonus = table.Column<int>(type: "integer", nullable: false),
                    Weight = table.Column<int>(type: "integer", nullable: false),
                    StelsDisadvantage = table.Column<bool>(type: "boolean", nullable: false),
                    MinStrength = table.Column<int>(type: "integer", nullable: false),
                    ArmorType = table.Column<string>(type: "text", nullable: false),
                    Price = table.Column<string>(type: "jsonb", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Armors", x => x.ArmorId);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Armors");
        }
    }
}
