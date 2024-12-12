using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class Coins
    {
        public Coins() { }
        public Coins(int platinum, int electrum, int golden, int silver, int copper)
        {
            Platinum = platinum;
            Electrum = electrum;
            Golden = golden;
            Silver = silver;
            Copper = copper;
        }
        public int Platinum { get; set; }
        public int Electrum { get; set; }
        public int Golden { get; set; }
        public int Silver { get; set; }
        public int Copper { get; set; }
    }
}
