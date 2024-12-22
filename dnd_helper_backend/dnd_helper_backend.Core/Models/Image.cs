using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dnd_helper_backend.Core.Models
{
    public class Image
    {
        public Image(string fileName) 
        {
            FileName = fileName;
        }
        public string FileName { get; set; }
    }
}
