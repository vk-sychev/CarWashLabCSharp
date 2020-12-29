using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.Models
{
    public class Car
    {
        public int Id_Car { get; set; }
        public Brand Brand { get; set; }
        public Model Model { get; set; }
        public Client Client { get; set; }
        public string CarNumber { get; set; }
    }
}
