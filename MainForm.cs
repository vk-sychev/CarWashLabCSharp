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
        public MainForm()
        {
            InitializeComponent();
        }

        private void OrdersUserControl_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DbConnStr"].ConnectionString;
            ordersUserControl.BoundControl(connectionString);
        }
    }
    
    
}
