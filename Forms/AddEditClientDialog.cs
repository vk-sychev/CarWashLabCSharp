using CarWash.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CarWash.Forms
{
    public partial class AddEditClientDialog : Form
    {
        public Client Client { get; private set; }
        public List<Discount> discounts; 

        public AddEditClientDialog(List<Discount> discounts)
        {
            InitializeComponent();
            this.Text = "Добавить клиента";
            Client = new Client();
            this.discounts = discounts;
            FillDiscounts();

        }

        public AddEditClientDialog(Client client, List<Discount> discounts):this(discounts)
        {
            this.Text = "Редактировать клиента";
            Client = client;
            FillClient();
        }

        private void FillDiscounts()
        {
            cbDiscount.ValueMember = "Id_Discount";
            cbDiscount.DisplayMember = "Amount";
            var cbDiscountDataSource = new List<Discount>();
            cbDiscountDataSource.AddRange(discounts);
            cbDiscountDataSource.Insert(0, new Discount { Id_Discount = -1, Amount = 0 });
            cbDiscount.DataSource = cbDiscountDataSource;
        }

        private Discount GetDiscountFromComboBox()
        {
            var discount = cbDiscount.SelectedItem as Discount;
            if (discount.Id_Discount == -1)
                return null;
            return discount;
        }

        private void FillClient()
        {
            tbSurname.Text = Client.Surname;
            tbName.Text = Client.Name;
            tbPatronymic.Text = Client.Patronymic ?? "";
            tbNumber.Text = Client.Number.ToString();
            cbDiscount.SelectedItem = Client.Discount != null ? cbDiscount.SelectedItem = discounts.Where(t => t.Id_Discount == Client.Discount.Id_Discount) : cbDiscount.SelectedItem = 0;
        }

        private bool CheckClient()
        {
            if (tbName.Text == "")
            {
                MessageBox.Show("Поле имя должно быть заполнено", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (tbSurname.Text == "")
            {
                MessageBox.Show("Поле фамилия должно быть заполнено", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            string pattern = @"\d{11}";
            if (!Regex.IsMatch(tbNumber.Text, pattern) || tbNumber.TextLength>11)
            {
                MessageBox.Show("Поле номер пустое/номер введен в неправильном формате", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        private void BtnOK_Click(object sender, EventArgs e)
        {
            if (!CheckClient())
                return;
            Client.Surname = tbSurname.Text;
            Client.Name = tbName.Text;
            Client.Patronymic = tbName.Text;
            Client.Number = Convert.ToInt64(tbNumber.Text);
            Client.Discount = GetDiscountFromComboBox();
            DialogResult = System.Windows.Forms.DialogResult.OK;
        }

        private void BtnCancel_Click(object sender, EventArgs e)
        {
            DialogResult = System.Windows.Forms.DialogResult.Cancel;
        }
    }
}
