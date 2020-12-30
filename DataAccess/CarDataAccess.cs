using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    public class CarDataAccess : BaseDataAccess
    {
        public CarDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Car> GetCars()
        {
            List<Car> cars = new List<Car>();
            string sqlQuery = "SELECT К.id_Клиента, К.Фамилия, К.Имя, К.Отчество, К.Номер_телефона, С.id_Скидки, С.Размер_скидки AS Размер_скидки_клиента , " +
                              "АВТ.id_Автомобиля, МК.id_Марки, МК.Название AS Название_марки, М.id_Модели, М.Название AS Название_модели, АВТ.ГосНомер, АВТ.Регион " +
                              "FROM Клиент_8 К LEFT JOIN Скидка_17 С " +
                              "ON К.id_Скидки = С.id_Скидки " +
                              "JOIN Автомобиль_9 АВТ " +
                              "ON К.id_Клиента = АВТ.id_Клиента " +
                              "JOIN Модель_15 М " +
                              "ON АВТ.id_Модели = М.id_Модели " +
                              "JOIN Марка_16 МК " +
                              "ON МК.id_Марки = М.id_Марки ";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Car car = new Car
                            {
                                Id_Car = (int)reader["Id_Автомобиля"],
                                Client = new Client
                                {
                                    Id_Client = (int)reader["Id_Клиента"],
                                    Surname = (string)reader["Фамилия"],
                                    Name = (string)reader["Имя"],
                                    Patronymic = reader["Фамилия"] != DBNull.Value ? (string)reader["Фамилия"] : string.Empty,
                                    Number = (long)reader["Номер_телефона"],
                                    Discount = reader["Id_Скидки"] != DBNull.Value ?
                                    new Discount
                                    {
                                        Id_Discount = (int)reader["Id_Скидки"],
                                        Amount = (decimal)reader["Размер_скидки_клиента"]
                                    } : null
                                },

                                Model = new Model
                                {
                                    Id_Model = (int)reader["Id_Модели"],
                                    Name = (string)reader["Название_модели"],
                                    Brand = new Brand
                                    {
                                        Id_Brand = (int)reader["Id_Марки"],
                                        Name = (string)reader["Название_марки"]
                                    }
                                },
                                //CarNumber = (string)reader["Номер_машины"]
                                Number = (string)reader["ГосНомер"],
                                Region = (int)reader["Регион"]
                            };
                            cars.Add(car);
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return cars;
        }

        //public List<Car> GetCarsByClientId(int id_Client)
        //{
        //    List<Car> cars = new List<Car>();
        //    string sqlQuery = @"SELECT К.id_Клиента, К.Фамилия, К.Имя, К.Отчество, К.Номер_телефона, С.id_Скидки, С.Размер_скидки AS Размер_скидки_клиента , " +
        //                      "АВТ.id_Автомобиля, МК.id_Марки, МК.Название AS Название_марки, М.id_Модели, М.Название AS Название_модели, АВТ.ГосНомер + CAST(АВТ.Регион AS VARCHAR(3)) AS Номер_машины " +
        //                      "FROM Клиент_8 К LEFT JOIN Скидка_17 С " +
        //                      "ON К.id_Скидки = С.id_Скидки " +
        //                      "JOIN Автомобиль_9 АВТ " +
        //                      "ON К.id_Клиента = АВТ.id_Клиента " +
        //                      "JOIN Модель_15 М " +
        //                      "ON АВТ.id_Модели = М.id_Модели " +
        //                      "JOIN Марка_16 МК " +
        //                      "ON МК.id_Марки = М.id_Марки " +
        //                      "WHERE К.id_Клиента = @id_Клиента";
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Open();
        //        using (SqlCommand command = new SqlCommand(sqlQuery, connection))
        //        {
        //            command.Parameters.Add(new SqlParameter("@id_Клиента", id_Client));
        //            using (SqlDataReader reader = command.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                {
        //                    Car car = new Car
        //                    {
        //                        Id_Car = (int)reader["Id_Автомобиля"],
        //                        Client = new Client
        //                        {
        //                            Id_Client = (int)reader["Id_Клиента"],
        //                            Surname = (string)reader["Фамилия"],
        //                            Name = (string)reader["Имя"],
        //                            Patronymic = reader["Фамилия"] != DBNull.Value ? (string)reader["Фамилия"] : string.Empty,
        //                            Number = (long)reader["Номер_телефона"],
        //                            Discount = reader["Id_Скидки"] != DBNull.Value ?
        //                            new Discount
        //                            {
        //                                Id_Discount = (int)reader["Id_Скидки"],
        //                                Amount = (decimal)reader["Размер_скидки_клиента"]
        //                            } : null
        //                        },

        //                        Model = new Model
        //                        {
        //                            Id_Model = (int)reader["Id_Модели"],
        //                            Name = (string)reader["Название_модели"],
        //                            Brand = new Brand
        //                            {
        //                                Id_Brand = (int)reader["Id_Марки"],
        //                                Name = (string)reader["Название_марки"]

        //                            }
        //                        },
        //                        CarNumber = (string)reader["Номер_машины"]
        //                    };
        //                    cars.Add(car);
        //                }
        //                reader.Close();
        //            }
        //        }
        //        connection.Close();
        //    }
        //    return cars;
        //}

        public void InsertCar(Car car)
        {
            string sqlQuery = @"INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)" +
                              "VALUES(@Регион, @id_Модели, @id_Клиента, @Госномер,)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@Регион", car.Region));
                    command.Parameters.Add(new SqlParameter("@id_Модели", car.Model.Id_Model));
                    command.Parameters.Add(new SqlParameter("@id_Клиента", car.Client.Id_Client));
                    command.Parameters.Add(new SqlParameter("@Госномер", car.Number));
                    command.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public void UpdateCar(Car car)
        {
            string sqlQuery = @"UPDATE Автомобиль_9 SET Регион = @Регион, id_Модели = @id_Модели, id_Клиента = @id_Клиента, Госномер = @Госномер " +
                               "WHERE id_Автомобиля = @id_Автомобиля";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@Регион", car.Region));
                    command.Parameters.Add(new SqlParameter("@id_Модели", car.Model.Id_Model));
                    command.Parameters.Add(new SqlParameter("@id_Клиента", car.Client.Id_Client));
                    command.Parameters.Add(new SqlParameter("@Госномер", car.Number));
                    command.Parameters.Add(new SqlParameter("id_Автомобиля", car.Id_Car));
                    command.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public void DeleteClient(int id_Car)
        {
            string sqlQuery = @"DELETE FROM Автомобиль_9
                                WHERE id_Автомобиля = @id_Автомобиля";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("id_Автомобиля", id_Car));
                }
                connection.Close();
            }
        }
    }
}
