using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.Models
{
    public class Client
    {
        public int Id_Client { get; set; }
        public string Surname { get; set; }
        public string Name { get; set; }
        public string Patronymic { get; set; }
        public long Number { get; set; }
        public string FIO {get
            {
                var fio = Surname + ' ' + Name.Substring(0, 1) + '.';
                if (Patronymic != null)
                    return fio + ' ' + Patronymic.Substring(0, 1);
                else
                    return fio;
            }
        }
        public Discount Discount { get; set; }
        public decimal DiscountAmount { get { return Discount != null ? Discount.Amount: 0; } }
    }
}
