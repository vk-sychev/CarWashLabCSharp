using CarWash.DataAccess;
using System;
using System.Configuration;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CarWash.UserControls;

namespace CarWash
{
    public partial class MainForm : Form
    {
        string connectionString;
        public MainForm()
        {
            InitializeComponent();
            connectionString = ConfigurationManager.ConnectionStrings["DbConnStr"].ConnectionString;
        }


        private void OrdersUserControl1_Load(object sender, EventArgs e)
        {
            ordersUserControl1.BoundControl(connectionString);
            
        }

        private void ClientUserControl1_Load(object sender, EventArgs e)
        {
            clientUserControl1.BoundControl(connectionString);
        }
    }    
}
