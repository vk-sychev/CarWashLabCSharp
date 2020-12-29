using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.Models
{
    public class Box
    {
        public int Id_Box { get; set; }
        public string Name { get; set; }
        public CarWash CarWash { get; set; }
        public string CarWashName { get { return CarWash.Name; } }
    }
}
