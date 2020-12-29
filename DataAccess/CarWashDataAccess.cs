using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    class CarWashDataAccess: BaseDataAccess
    {
        public CarWashDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Models.CarWash> GetCarWashes()
        {
            List<Models.CarWash> carWashes = new List<Models.CarWash>();
            string sqlQuery = "SELECT АМ.id_Автомойки, АМ.Название, АМ.Адрес " +
                              "FROM Автомойка_1 АМ";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            carWashes.Add(new Models.CarWash
                            {
                                Id_CarWash = (int)reader["Id_Автомойки"],
                                Name = (string)reader["Название"],
                                Address = (string)reader["Адрес"]
                            });
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return carWashes;
        }
    }
}
