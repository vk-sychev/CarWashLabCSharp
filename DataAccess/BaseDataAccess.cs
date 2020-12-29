using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    public class BaseDataAccess
    {
        protected string connectionString;

        public BaseDataAccess(string connectionString)
        {
            this.connectionString = connectionString;
        }
    }
}
