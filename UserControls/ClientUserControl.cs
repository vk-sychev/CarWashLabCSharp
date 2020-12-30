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
using CarWash.Forms;
using CarWash.Models;

namespace CarWash.UserControls
{
    public partial class ClientUserControl : UserControl
    {
        ClientDataAccess clientDataAccess;
        DiscountDataAccess discountDataAccess;

        List<Discount> discounts;
        public ClientUserControl()
        {
            InitializeComponent();
        }

        public ClientUserControl(string connectionString)
        {
            InitializeComponent();
            BoundControl(connectionString);
        }

        public void BoundControl(string connectionString)
        {
            clientDataAccess = new ClientDataAccess(connectionString);
            discountDataAccess = new DiscountDataAccess(connectionString);

            //clientDataAccess.GetClients();
            discounts = discountDataAccess.GetDiscounts();
            dgvClients.AutoGenerateColumns = false;
            dgvClients.MultiSelect = false;
            dgvClients.DataSource = clientDataAccess.GetClients();
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            AddEditClientDialog addEditClientDialog = new AddEditClientDialog(discounts);
            if (addEditClientDialog.ShowDialog() == DialogResult.OK)
            {
                clientDataAccess.InsertClient(addEditClientDialog.Client);
                dgvClients.DataSource = clientDataAccess.GetClients();
            }
        }

        private Client GetSelectedClient()
        {
            if (dgvClients.SelectedRows == null || dgvClients.SelectedRows.Count == 0)
                return null;
            return (dgvClients.SelectedRows[0].DataBoundItem as Client);
        }

        private void BtnEdit_Click(object sender, EventArgs e)
        {
            var selectedClient = GetSelectedClient();
            if (selectedClient == null)
            {
                MessageBox.Show("Клиент не выбран", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            AddEditClientDialog addEditClientDialog = new AddEditClientDialog(selectedClient, discounts);
            if (addEditClientDialog.ShowDialog() == DialogResult.OK)
            {
                clientDataAccess.UpdateClient(addEditClientDialog.Client);
                dgvClients.DataSource = clientDataAccess.GetClients();
            }
        }

        private void BtnDelete_Click(object sender, EventArgs e)
        {
            var selectedClient = GetSelectedClient();
            if (selectedClient == null)
            {
                MessageBox.Show("Клиент не выбран", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var msg = MessageBox.Show("Хотите удалить?", "Вопрос", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (msg == DialogResult.Yes)
            {
                clientDataAccess.DeleteClient(selectedClient.Id_Client);
                dgvClients.DataSource = clientDataAccess.GetClients();
            }
        }
    }
}
