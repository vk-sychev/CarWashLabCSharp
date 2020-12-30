using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CarWash.DataAccess;
using CarWash.Models;

namespace CarWash.UserControls
{
    public partial class CarUserControl : UserControl
    {
        ClientDataAccess clientDataAccess;
        CarDataAccess carDataAccess;
        List<Client> clients;
        List<Car> cars;
        public CarUserControl()
        {
            InitializeComponent();
        }

        public CarUserControl(string connectionString)
        {
            InitializeComponent();
            BoundControl(connectionString);
        }

        public void BoundControl(string connectionString)
        {
            clientDataAccess = new ClientDataAccess(connectionString);
            carDataAccess = new CarDataAccess(connectionString);
            clients = clientDataAccess.GetClients();
            cars = carDataAccess.GetCars();
            dgvCars.AutoGenerateColumns = false;
            dgvCars.MultiSelect = false;
            dgvCars.DataSource = cars;
        }
    }
}
