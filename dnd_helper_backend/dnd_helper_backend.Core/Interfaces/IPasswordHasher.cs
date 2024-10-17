using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Infrastructure
{
    public interface IPasswordHasher
    {
        public string Generate(string pass);
        public bool Verify(string pass, string passHash);
    }
}
