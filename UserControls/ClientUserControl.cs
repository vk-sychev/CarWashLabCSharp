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

namespace CarWash.UserControls
{
    public partial class ClientUserControl : UserControl
    {
        ClientDataAccess clientDataAccess;
        DiscountDataAccess discountDataAccess;
        public ClientUserControl()
        {
            InitializeComponent();
        }

        public ClientUserControl(string connectionString)
        {
            InitializeComponent();
        }

        public void BoundControl(string connectionString)
        {

        }
    }
}
