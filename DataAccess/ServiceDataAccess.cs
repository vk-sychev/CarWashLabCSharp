using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    class ServiceDataAccess: BaseDataAccess
    {
        public ServiceDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Service> GetServices()
        {
            List<Service> services = new List<Service>();
            string sqlQuery = "SELECT *" +
                              "FROM Услуга_3";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            services.Add(new Service
                            {
                                Id_Service = (int)reader["Id_Услуги"],
                                Name = (string)reader["Название"]
                            });
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return services;
        }
    }
}
