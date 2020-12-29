using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    public class BoxDataAccess : BaseDataAccess
    {
        public BoxDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Box> GetBoxes()
        {
            List<Box> boxes = new List<Box>();
            string sqlQuery = "SELECT Б.id_Бокса, Б.Название_бокса , " +
                              "АМ.id_Автомойки, АМ.Название, АМ.Адрес " +
                              "FROM Автомойка_1 АМ JOIN Бокс_2 Б " +
                              "ON АМ.id_Автомойки = Б.id_Автомойки ";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            boxes.Add(new Box
                            {
                                Id_Box = (int)reader["Id_Бокса"],
                                Name = (string)reader["Название_бокса"],
                                CarWash = new Models.CarWash
                                {
                                    Id_CarWash = (int)reader["Id_Автомойки"],
                                    Name = (string)reader["Название"],
                                    Address = (string)reader["Адрес"]
                                }
                            });
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return boxes;
        }

        public List<Box> GetBoxesByCarWashId(int id)
        {
            List<Box> boxes = new List<Box>();
            string sqlQuery = @"SELECT Б.id_Бокса, Б.Название_бокса , " +
                              "АМ.id_Автомойки, АМ.Название, АМ.Адрес " +
                              "FROM Автомойка_1 АМ JOIN Бокс_2 Б " +
                              "ON АМ.id_Автомойки = Б.id_Автомойки " +
                              "WHERE АМ.id_Автомойки = @id";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id", id));
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            boxes.Add(new Box
                            {
                                Id_Box = (int)reader["Id_Бокса"],
                                Name = (string)reader["Название_бокса"],
                                CarWash = new Models.CarWash
                                {
                                    Id_CarWash = (int)reader["Id_Автомойки"],
                                    Name = (string)reader["Название"],
                                    Address = (string)reader["Адрес"]
                                }
                            });
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return boxes;
        }
    }  
}
