using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.ValueObjects
{
    public class Attributes
    {
        public Attributes() { }
        public Attributes(int strength, int dexterity, int constitution, int intelligence, int wisdom, int charisma) 
        {
            Strength = strength;
            Dexterity = dexterity;
            Constitution = constitution;
            Intelligence = intelligence;
            Wisdom = wisdom;
            Charisma = charisma;
        }

        public int Strength {  get; set; }
        public int Dexterity {  get; set; }
        public int Constitution {  get; set; }
        public int Intelligence {  get; set; }
        public int Wisdom {  get; set; }
        public int Charisma {  get; set; }
    }
}
