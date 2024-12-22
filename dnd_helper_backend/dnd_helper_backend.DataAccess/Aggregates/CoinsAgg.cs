using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.DataAccess.Aggregates
{
    public class CoinsAgg
    {
        public int Platinum {  get; set; }
        public int Electrum { get; set; }
        public int Golden { get; set; }
        public int Silver { get; set; }
        public int Copper { get; set; }

    }
}
