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
using CarWash.Forms;

namespace CarWash.UserControls
{
    public partial class OrdersUserControl : UserControl
    {
        ClientDataAccess clientDataAccess;
        CarWashDataAccess carWashDataAccess;
        StockDataAccess stockDataAccess;
        ServiceDataAccess serviceDataAccess;
        CarDataAccess carDataAccess;
        BoxDataAccess boxDataAccess;
        OrderDataAccess orderDataAccess;

        List<Client> clients;
        List<Models.CarWash> carWashes;
        List<Stock> stocks;
        List<Service> services;
        List<Car> cars;
        List<Box> boxes;
        //List<Order> orders;
        public OrdersUserControl()
        {
            InitializeComponent();
        }

        public OrdersUserControl(string connectionString)
        {
            InitializeComponent();
            BoundControl(connectionString);
        }

        public void BoundControl(string connectionString)
        {
            clientDataAccess = new ClientDataAccess(connectionString);
            orderDataAccess = new OrderDataAccess(connectionString);
            carWashDataAccess = new CarWashDataAccess(connectionString);
            stockDataAccess = new StockDataAccess(connectionString);
            serviceDataAccess = new ServiceDataAccess(connectionString);
            carDataAccess = new CarDataAccess(connectionString);
            boxDataAccess = new BoxDataAccess(connectionString);

            clients = clientDataAccess.GetClientsHaveCars();
            carWashes = carWashDataAccess.GetCarWashes();
            stocks = stockDataAccess.GetStocks();
            services = serviceDataAccess.GetServices();
            boxes = boxDataAccess.GetBoxes();
            cars = carDataAccess.GetCars();
            dgvOrders.AutoGenerateColumns = false;
            dgvOrders.MultiSelect = false;
            dgvOrders.DataSource = orderDataAccess.GetOrders();
        }

        private void AddBtn_Click(object sender, EventArgs e)
        {
            AddEditOrderDialog addEditOrderDialog = new AddEditOrderDialog(clients, carWashes, stocks, services, boxes, orderDataAccess, cars);
            if (addEditOrderDialog.ShowDialog() == DialogResult.OK)
            {
                orderDataAccess.InsertOrder(addEditOrderDialog.Order);
                dgvOrders.DataSource = orderDataAccess.GetOrders();
            }
        }

        private Order GetSelectedOrder()
        {
            if (dgvOrders.SelectedRows == null || dgvOrders.SelectedRows.Count == 0)
                return null;
            return (dgvOrders.SelectedRows[0].DataBoundItem as Order);
        }

        private void BthEdit_Click(object sender, EventArgs e)
        {
            var selectedOrder = GetSelectedOrder();
            if (selectedOrder == null)
            {
                MessageBox.Show("Заказ не выбран", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            AddEditOrderDialog addEditOrderDialog = new AddEditOrderDialog(selectedOrder, clients, carWashes, stocks, services, boxes, orderDataAccess, cars);
            if (addEditOrderDialog.ShowDialog() == DialogResult.OK)
            {
                orderDataAccess.UpdateOrder(addEditOrderDialog.Order, addEditOrderDialog.oldService);
                dgvOrders.DataSource = orderDataAccess.GetOrders();
            }
        }

        private void DtnDelete_Click(object sender, EventArgs e)
        {
            var selectedOrder = GetSelectedOrder();
            if (selectedOrder == null)
            {
                MessageBox.Show("Заказ не выбран", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var msg = MessageBox.Show("Хотите удалить?", "Вопрос", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (msg == DialogResult.Yes)
            {
                orderDataAccess.DeleteOrder(selectedOrder);
                dgvOrders.DataSource = orderDataAccess.GetOrders();
            }
        }
    }
}
