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
        public Model Model { get; set; }
        public Client Client { get; set; }
        public string Number { get; set; }
        public int Region { get; set; }
        public string CarNumber { get { return Number + Region.ToString(); } }
        public string FIO { get { return Client.FIO; } }
        public string BrandName { get { return Model.Brand.Name; } }
        public string ModelName { get { return Model.Name; } }
    }
}
