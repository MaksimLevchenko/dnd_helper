using dnd_helper_backend.DataAccess.Aggregates;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.DataAccess.Entities
{
    public class ArmorEntity
    {
        public Guid ArmorId { get; set; }
        public string? Name { get; set; }
        public int ArmorClass { get; set; }
        public bool GrantsDexerityBonus { get; set; }
        public int MaxDexterityBonus { get; set; }
        public int Weight { get; set; }
        public CoinsAgg Price { get; set; }
        public bool StelsDisadvantage { get; set; }
        public int MinStrength { get; set; }
        public string? ArmorType { get; set; }

        //картиночки
    }
}
