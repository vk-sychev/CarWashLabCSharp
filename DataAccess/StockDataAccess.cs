using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    class StockDataAccess: BaseDataAccess
    {
        public StockDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Stock> GetStocks()
        {
            List<Stock> stocks = new List<Stock>();
            string sqlQuery = "SELECT *" +
                              "FROM Акция_7";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            stocks.Add(new Stock
                            {
                                Id_Stock = (int)reader["Id_Акции"],
                                Name = (string)reader["Название_акции"],
                                Amount = (decimal)reader["Размер_скидки"]
                            });
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return stocks;
        }
    }
}
