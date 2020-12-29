using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.Models
{
    public class Order
    {
        public int Id_Order { get; set; }
        public DateTime DateOrder { get; set; }
        public TimeSpan TimeOfStartWork { get; set; }
        public TimeSpan TimeOfEndWork { get; set; }
        public Client Client { get; set; }
        public string OwnerFIO { get
            {
                var fio = Client.Surname + ' ' + Client.Name.Substring(0, 1) + '.';
                if (Client.Patronymic != null)
                    return fio + ' ' + Client.Patronymic.Substring(0, 1);
                else
                    return fio;
            } }
        public Stock Stock { get; set; }
        public string StockName { get { return Stock != null ? Stock.Name : null; } }
        public Box Box { get; set; }
        public string BoxName { get { return Box != null ? Box.Name : null; } }
        public string CarWashName { get { return Box.CarWashName; } }
        public Service Service { get; set; }
        public string ServiceName { get { return Service.Name; } }
        public Car Car { get; set; }
        public string CarNumber { get { return Car.CarNumber; } }
        public decimal Cost { get; set; }
    }
}
