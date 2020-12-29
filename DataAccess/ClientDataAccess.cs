using CarWash.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarWash.DataAccess
{
    class ClientDataAccess : BaseDataAccess
    {
        public ClientDataAccess(string connectionString) :
            base(connectionString)
        { }

        public List<Client> GetClients()
        {
            List<Client> clients = new List<Client>();
            string sqlQuery = "SELECT К.id_Клиента, К.Фамилия, К.Имя, К.Отчество, К.Номер_телефона, С.id_Скидки, С.Размер_скидки AS Размер_скидки_клиента " +
                              "FROM Клиент_8 К LEFT JOIN Скидка_17 С " +
                              "ON К.id_Скидки = С.id_Скидки";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Client client = new Client()
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
                            clients.Add(client);
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return clients;
        }

        public List<Client> GetClientsHaveCars()
        {
            List<Client> clients = new List<Client>();
            string sqlQuery = "SELECT DISTINCT К.id_Клиента, К.Фамилия, К.Имя, К.Отчество, К.Номер_телефона, С.id_Скидки, С.Размер_скидки AS Размер_скидки_клиента " +
                              "FROM Клиент_8 К LEFT JOIN Скидка_17 С " +
                              "ON К.id_Скидки = С.id_Скидки " +
                              "JOIN Автомобиль_9 АВТ " +
                              "ON АВТ.id_Клиента = К.id_Клиента";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Client client = new Client()
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
                            clients.Add(client);
                        }
                        reader.Close();
                    }
                }
                connection.Close();
            }
            return clients;
        }

        public void InsertClient(Client client)
        {
            string sqlQuery = "INSERT INTO Клиент_8(Фамилия, Имя, Отчество, Номер_телефона, id_Скидки)" +
                              "VALUES(@Surname, @Name, @Patronymic, @Number, @id_Discount)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.Add(new SqlParameter("@Surname", client.Surname));
                    command.Parameters.Add(new SqlParameter("@Name", client.Name));
                    if (client.Patronymic != null)
                        command.Parameters.Add(new SqlParameter("@Patronymic", client.Patronymic));
                    else
                        command.Parameters.Add(new SqlParameter("@Patronymic", DBNull.Value));
                    command.Parameters.Add(new SqlParameter("@Number", client.Number));
                    if (client.Discount != null)
                        command.Parameters.Add(new SqlParameter("@id_Discount", client.Discount));
                    else
                        command.Parameters.Add(new SqlParameter("@id_Discount", DBNull.Value));
                }
            }
        }
    }
}
