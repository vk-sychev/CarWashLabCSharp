using CarWash.DataAccess;
using CarWash.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CarWash.Forms
{
    public partial class AddEditOrderDialog : Form
    {
        public Order Order { get; private set; }
        public Service oldService { get; private set; } 
        private readonly List<Client> clients;
        private readonly List<Models.CarWash> carWashes;
        private readonly List<Stock> stocks;
        private readonly List<Service> services;
        private readonly List<Box> boxes;
        private readonly OrderDataAccess orderDataAccess;
        private readonly List<Car> cars;

        public AddEditOrderDialog(List<Client> clients, List<Models.CarWash> carWashes, List<Stock> stocks, List<Service> services, 
            List<Box> boxes, OrderDataAccess orderDataAccess, List<Car> cars)
        {
            InitializeComponent();
            this.Text = "Добавить заказ";
            dtmDate.MaxDate = DateTime.Now;
            Order = new Order();
            this.clients = clients;
            this.carWashes = carWashes;
            this.stocks = stocks;
            this.services = services;
            this.boxes = boxes;
            this.orderDataAccess = orderDataAccess;
            this.cars = cars;
            FillClients();
            FillCarWashes();
            FillStocks();
            FillServices();
        }

        public AddEditOrderDialog(Order order, List<Client> clients, List<Models.CarWash> carWashes, List<Stock> stocks, List<Service> services,
            List<Box> boxes, OrderDataAccess orderDataAccess, List<Car> cars)
            :this(clients, carWashes, stocks, services, boxes, orderDataAccess, cars)
        {
            this.Text = "Редактировать заказ";
            Order = order;
            FillOrder();
        }

        private void FillOrder()
        {
            dtmDate.Value = Order.DateOrder;
            dtmStart.Value = Convert.ToDateTime(Order.TimeOfStartWork.ToString());
            dtmEnd.Value = Convert.ToDateTime(Order.TimeOfEndWork.ToString());
            cbClient.SelectedItem = clients.Where(t => t.Id_Client == Order.Client.Id_Client).First();
            cbStock.SelectedItem = Order.Stock != null ? cbStock.SelectedItem = stocks.Where(t=>t.Id_Stock == Order.Stock.Id_Stock).First(): cbStock.SelectedItem = "Без акции";
            cbCarWash.SelectedItem = carWashes.Where(t => t.Id_CarWash == Order.Box.CarWash.Id_CarWash).First();
            cbBox.SelectedItem = boxes.Where(t => t.Id_Box == Order.Box.Id_Box).First();
            oldService = services.Where(t => t.Id_Service == Order.Service.Id_Service).First();
            cbService.SelectedItem = oldService;
            cbCar.SelectedItem = cars.Where(t => t.Id_Car == Order.Car.Id_Car).First();
            //цена
        }

        private void BtnOK_Click(object sender, EventArgs e)
        {
            Order.DateOrder = dtmDate.Value;
            Order.TimeOfStartWork = dtmStart.Value.TimeOfDay;
            Order.TimeOfEndWork = dtmEnd.Value.TimeOfDay;
            Order.Client = cbClient.SelectedItem as Client;
            Order.Stock = GetStockFromComboBox();
            Order.Box = cbBox.SelectedItem as Box;
            Order.Service = cbService.SelectedItem as Service;
            Order.Car = cbCar.SelectedItem as Car;
            Order.Cost = orderDataAccess.GetOrderCost(Order.Box.CarWash.Id_CarWash, Order.Service.Id_Service, Order.Client.Discount, Order.Stock);
            DialogResult = System.Windows.Forms.DialogResult.OK;
        }

        private void FillClients()
        {
            cbClient.ValueMember = "Id_client";
            cbClient.DisplayMember = "FIO";
            cbClient.DataSource = clients;
        }

        private void FillCarWashes()
        {
            cbCarWash.ValueMember = "Id_CarWash";
            cbCarWash.DisplayMember = "Name";
            cbCarWash.DataSource = carWashes;
        }

        private void FillBoxes()
        {
            cbBox.ValueMember = "Id_Box";
            cbBox.DisplayMember = "Name";
            int carWashId = (int)cbCarWash.SelectedValue;
            cbBox.DataSource = boxes.Where(t => t.CarWash.Id_CarWash == carWashId).ToList();
        }

        private void FillStocks()
        {
            cbStock.ValueMember = "Id_Stock";
            cbStock.DisplayMember = "Name";
            List<Stock> cbStockDataSource = new List<Stock>();
            cbStockDataSource.AddRange(stocks);
            cbStockDataSource.Insert(0, new Stock() { Id_Stock = -1, Amount = 0, Name = "Без акции" });
            cbStock.DataSource = cbStockDataSource;
        }

        private Stock GetStockFromComboBox()
        {
            Stock stock = cbStock.SelectedItem as Stock;
            if (stock.Id_Stock == -1)
                return null;
            return stock;
        }

        private void FillServices()
        {
            cbService.ValueMember = "Id_Service";
            cbService.DisplayMember = "Name";
            cbService.DataSource = services;
        }

        private void FillCars()
        {
            cbCar.ValueMember = "Id_Car";
            cbCar.DisplayMember = "CarNumber";
            int clientId = (int)cbClient.SelectedValue;
            cbCar.DataSource = cars.Where(t => t.Client.Id_Client == clientId).ToList();
        }

        private void CbCarWash_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillBoxes();
        }

        private void CbClient_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillCars();
        }

        private void BtnCancel_Click(object sender, EventArgs e)
        {
            DialogResult = System.Windows.Forms.DialogResult.Cancel;
        }
    }
}
