using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    class DiscountDataAccess : BaseDataAccess
    {
        public DiscountDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Discount> GetDiscounts()
        {
            List<Discount> discounts = new List<Discount>();
            string sqlQuery = "SELECT *" +
                              "FROM Скидка_17";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            discounts.Add(new Discount
                            {
                                Id_Discount = (int)reader["id_Скидки"],
                                Amount = (decimal)reader["Размер_скидки"]
                            });
                        }
                        reader.Close();
                    };
                }
                connection.Close();
            }
            return discounts;
        }
    }
}
