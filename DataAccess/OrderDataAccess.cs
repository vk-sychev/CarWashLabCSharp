using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    public class OrderDataAccess: BaseDataAccess
    {
        public OrderDataAccess(string connectionString): 
            base(connectionString)
        { }


        public List<Order> GetOrders()
        {
            List<Order> orders = new List<Order>();
            string sqlQuery = "SELECT З.id_Заказа, З.Дата_заказа, З.Время_начала_работ, З.Время_окончания_работ , " +
                               "К.id_Клиента, К.Фамилия, К.Имя, К.Отчество, К.Номер_телефона, С.id_Скидки, С.Размер_скидки AS Размер_скидки_клиента , " +
                               "А.id_Акции, А.Название_акции, А.Размер_скидки , " +
                               "Б.id_Бокса, Б.Название_бокса , " +
                               "АМ.id_Автомойки, АМ.Название, АМ.Адрес, У.id_Услуги, У.Название AS Название_услуги , " +
                               "АВТ.id_Автомобиля, МК.id_Марки, МК.Название AS Название_марки, М.id_Модели, М.Название AS Название_модели, АВТ.ГосНомер, АВТ.Регион , " +
                               "З.Стоимость " +
                               "FROM Заказ_5 З JOIN Клиент_8 К " +
                               "ON З.id_Клиента = К.id_Клиента " +
                               "LEFT JOIN Скидка_17 С " +
                               "ON К.id_Скидки = С.id_Скидки " +
                               "LEFT JOIN Акция_7 А " +
                               "ON З.id_Акции = А.id_Акции " +
                               "JOIN Бокс_2 Б " +
                               "ON З.id_Бокса = Б.id_Бокса " +
                               "JOIN Автомойка_1 АМ " +
                               "ON АМ.id_Автомойки = Б.id_Автомойки " +
                               "JOIN Автомойка_Услуга_13 АУ " +
                               "ON АМ.id_Автомойки = АУ.id_Автомойки " +
                               "JOIN Услуга_3 У " +
                               "ON У.id_Услуги = АУ.id_Услуги " +
                               "JOIN Услуга_Заказ_19 УЗ " +
                               "ON У.id_Услуги = УЗ.id_Услуги AND З.id_Заказа = УЗ.id_Заказа " +
                               "JOIN Автомобиль_9 АВТ " +
                               "ON З.id_Автомобиля = АВТ.id_Автомобиля " +
                               "JOIN Модель_15 М " +
                               "ON АВТ.id_Модели = М.id_Модели " +
                               "JOIN Марка_16 МК " +
                               "ON МК.id_Марки = М.id_Марки " +
                               "ORDER BY 1";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Client cl;
                            Order order = new Order()
                            {
                                Id_Order = (int)reader["Id_Заказа"],
                                DateOrder = (DateTime)reader["Дата_заказа"],
                                TimeOfStartWork = (TimeSpan)reader["Время_начала_работ"],
                                TimeOfEndWork = (TimeSpan)reader["Время_окончания_работ"]
                            };

                            cl = new Client()
                            {
                                Id_Client = (int)reader["Id_Клиента"],
                                Surname = (string)reader["Фамилия"],
                                Name = (string)reader["Имя"],
                                Patronymic = reader["Отчество"] != DBNull.Value ? (string)reader["Отчество"] : string.Empty,
                                Number = (long)reader["Номер_телефона"],
                                Discount = reader["Id_Скидки"] != DBNull.Value ?
                                    new Discount
                                    {
                                        Id_Discount = (int)reader["Id_Скидки"],
                                        Amount = (decimal)reader["Размер_скидки_клиента"]
                                    } : null
                            };
                            order.Client = cl;

                            order.Stock = reader["Id_Акции"] != DBNull.Value ?
                                new Stock
                                {
                                    Id_Stock = (int)reader["Id_Акции"],
                                    Name = (string)reader["Название_акции"],
                                    Amount = (decimal)reader["Размер_скидки"] 
                                } : null;

                            order.Box = new Box
                            {
                                Id_Box = (int)reader["Id_Бокса"],
                                Name = (string)reader["Название_бокса"],
                                CarWash = new Models.CarWash
                                {
                                    Id_CarWash = (int)reader["Id_Автомойки"],
                                    Name = (string)reader["Название"],
                                    Address = (string)reader["Адрес"]
                                }
                            };

                            order.Service = new Service
                            {
                                Id_Service = (int)reader["Id_Услуги"],
                                Name = (string)reader["Название_услуги"]
                            };

                            order.Car = new Car
                            {
                                Id_Car = (int)reader["Id_Автомобиля"],
                                Client = cl,
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
                                //CarNumber = (string)reader["Номер_машины"],
                                Number = (string)reader["ГосНомер"],
                                Region = (int)reader["Регион"]
                             };

                            order.Cost = (decimal)reader["Стоимость"];
                            
                            orders.Add(order);
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return orders;
        }

        public decimal GetOrderCost(int id_carwash, int id_service, Discount discount, Stock stock)
        {
            int id_CarWash_Cosmetics = -1;

            int serviceCost = 0;
            decimal cosmeticsCost = 0;

            string sqlQueryServiceCost = @"SELECT АУ.id_Автомойки_Услуги, АУ.Стоимость " +
                              "FROM Автомойка_Услуга_13 АУ JOIN Автомойка_1 А " +
                              "ON АУ.id_Автомойки = А.id_Автомойки " +
                              "JOIN Услуга_3 У " +
                              "ON АУ.id_Услуги = У.id_Услуги " +
                              "WHERE А.id_Автомойки = @id_Автомойки AND У.id_Услуги = @id_Услуги";

            string sqlQueryCosmeticsCost = @"SELECT УК.Стоимость * УК.Объем AS Стоимость_косметики
                                             FROM Услуга_Косметика_12 УК
                                             WHERE УК.id_Автомойки_Услуги = @id_Автомойки_Услуги";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQueryServiceCost, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id_Автомойки", id_carwash));
                    command.Parameters.Add(new SqlParameter("@id_Услуги", id_service));
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            id_CarWash_Cosmetics = (int)reader["id_Автомойки_Услуги"];
                            serviceCost = (int)reader["Стоимость"];
                        }

                        reader.Close();
                    }
                }
                using(SqlCommand command = new SqlCommand(sqlQueryCosmeticsCost, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id_Автомойки_Услуги", id_CarWash_Cosmetics));
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            cosmeticsCost = (decimal)reader["Стоимость_косметики"];
                        }
                        reader.Close();
                    }
                }

                connection.Close();
            }

            if (stock != null)
            {
                return serviceCost * (1 - stock.Amount / 100) + cosmeticsCost;
            }
            else if (discount != null)
            {
                return serviceCost * (1 - discount.Amount / 100) + cosmeticsCost;
            }
            else
            {
                return serviceCost + cosmeticsCost;
            }
        }

        public void InsertOrder(Order order)
        {
            string sqlQuery = @"INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
                                VALUES(@DateOrder, @TimeOfStartWork, @TimeOfEndWork, @Id_Client, @Id_Stock, @Id_Box, @Id_Car, @Cost)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using(SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@DateOrder", order.DateOrder));
                    command.Parameters.Add(new SqlParameter("@TimeOfStartWork", order.TimeOfStartWork));
                    command.Parameters.Add(new SqlParameter("@TimeOfEndWork", order.TimeOfEndWork));
                    command.Parameters.Add(new SqlParameter("@Id_Client", order.Client.Id_Client));
                    if (order.Stock != null)
                        command.Parameters.Add(new SqlParameter("@Id_Stock", order.Stock.Id_Stock));
                    else
                        command.Parameters.Add(new SqlParameter("@Id_Stock", DBNull.Value));
                    command.Parameters.Add(new SqlParameter("@Id_Box", order.Box.Id_Box));
                    command.Parameters.Add(new SqlParameter("@Id_Car", order.Car.Id_Car));
                    command.Parameters.Add(new SqlParameter("@Cost", order.Cost));
                    command.ExecuteNonQuery();
                }
                connection.Close();           
            }
            InsertOrder_Service(order);
        }

        private void InsertOrder_Service(Order order)
        {
            string sqlInsertQuery = @"INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
                                      VALUES(@Id_Услуги, @Id_Заказа)";

            string sqlSelectQuery = @"SELECT З.id_Заказа
                                      FROM Заказ_5 З JOIN Бокс_2 Б
                                      ON З.id_Бокса = Б.id_Бокса
                                      JOIN Автомойка_1 АМ
                                      ON АМ.id_Автомойки = Б.id_Автомойки
                                      JOIN Автомойка_Услуга_13 АУ
                                      ON АМ.id_Автомойки = АУ.id_Автомойки
                                      JOIN Услуга_3 У
                                      ON У.id_Услуги = АУ.id_Услуги 
                                      WHERE UPPER(У.Название) = UPPER(@Название) AND З.Дата_заказа = @Дата AND З.Время_начала_работ = @Старт_работ AND З.id_Автомобиля = @id_Автомобиля";

            int id_Order = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlSelectQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@Название", order.ServiceName));
                    SqlParameter dateParametr = new SqlParameter("@Дата", SqlDbType.Date)
                    {
                        Value = order.DateOrder
                    };

                    SqlParameter startParametr = new SqlParameter("@Старт_работ", SqlDbType.Time)
                    {
                        Value = order.TimeOfStartWork
                    };

                    command.Parameters.Add(dateParametr);
                    command.Parameters.Add(startParametr);
                    command.Parameters.Add(new SqlParameter("@id_Автомобиля", order.Car.Id_Car));
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            id_Order = (int)reader["id_Заказа"];                         
                        }
                        reader.Close();
                    }
                }

                using(SqlCommand command = new SqlCommand(sqlInsertQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@Id_Услуги", order.Service.Id_Service));
                    command.Parameters.Add(new SqlParameter("@Id_Заказа", id_Order));
                    command.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public void UpdateOrder(Order order, Service oldService)
        {
            string sqlQuery = @"UPDATE Заказ_5 SET Дата_заказа = @DateOrder, Время_начала_работ = @TimeOfStartWork, Время_окончания_работ = @TimeOfEndWork, 
                                                   id_Клиента = @Id_Client, id_Акции = @Id_Stock, id_Бокса = @Id_Box, id_Автомобиля = @Id_Car, Стоимость = @Cost
                                                   WHERE id_Заказа = @id_Заказа";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id_Заказа", order.Id_Order));
                    command.Parameters.Add(new SqlParameter("@DateOrder", order.DateOrder));
                    command.Parameters.Add(new SqlParameter("@TimeOfStartWork", order.TimeOfStartWork));
                    command.Parameters.Add(new SqlParameter("@TimeOfEndWork", order.TimeOfEndWork));
                    command.Parameters.Add(new SqlParameter("@Id_Client", order.Client.Id_Client));
                    if (order.Stock != null)
                        command.Parameters.Add(new SqlParameter("@Id_Stock", order.Stock.Id_Stock));
                    else
                        command.Parameters.Add(new SqlParameter("@Id_Stock", DBNull.Value));
                    command.Parameters.Add(new SqlParameter("@Id_Box", order.Box.Id_Box));
                    command.Parameters.Add(new SqlParameter("@Id_Car", order.Car.Id_Car));
                    command.Parameters.Add(new SqlParameter("@Cost", order.Cost));
                    command.ExecuteNonQuery();
                }
                connection.Close();
                UpdateOrder_Service(order, oldService);
            }
        }

        private void UpdateOrder_Service(Order order, Service oldService)
        {
            string sqlQuery = @"UPDATE Услуга_Заказ_19 SET id_Услуги = @id_Услуги 
                                WHERE id_Заказа = @id_Заказа AND id_Услуги = @id_Старой_услуги";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id_Услуги", order.Service.Id_Service));
                    command.Parameters.Add(new SqlParameter("@id_Старой_услуги", oldService.Id_Service));
                    command.Parameters.Add(new SqlParameter("@id_Заказа", order.Id_Order));
                    command.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public void DeleteOrder(Order order)
        {
            DeleteOrder_Service(order);
            string sqlQuery = @"DELETE FROM Заказ_5 where id_Заказа = @id_Заказа";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id_Заказа", order.Id_Order));
                    command.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        private void DeleteOrder_Service(Order order)
        {
            string sqlQuery = @"DELETE FROM Услуга_Заказ_19
                                WHERE id_Заказа = @id_Заказа AND id_Услуги = @id_Услуги";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@id_Услуги", order.Service.Id_Service));
                    command.Parameters.Add(new SqlParameter("@id_Заказа", order.Id_Order));
                    command.ExecuteNonQuery();
                }
                connection.Close();
            }
        }
    }
}
