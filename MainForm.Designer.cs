namespace CarWash
{
    partial class MainForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.tabPageClient = new System.Windows.Forms.TabPage();
            this.clientUserControl1 = new CarWash.UserControls.ClientUserControl();
            this.tabPageOrders = new System.Windows.Forms.TabPage();
            this.ordersUserControl1 = new CarWash.UserControls.OrdersUserControl();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabPageCars = new System.Windows.Forms.TabPage();
            this.tabPageClient.SuspendLayout();
            this.tabPageOrders.SuspendLayout();
            this.tabControl.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabPageClient
            // 
            this.tabPageClient.Controls.Add(this.clientUserControl1);
            this.tabPageClient.Location = new System.Drawing.Point(4, 22);
            this.tabPageClient.Name = "tabPageClient";
            this.tabPageClient.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageClient.Size = new System.Drawing.Size(976, 424);
            this.tabPageClient.TabIndex = 1;
            this.tabPageClient.Text = "Клиенты";
            this.tabPageClient.UseVisualStyleBackColor = true;
            // 
            // clientUserControl1
            // 
            this.clientUserControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.clientUserControl1.Location = new System.Drawing.Point(3, 3);
            this.clientUserControl1.MinimumSize = new System.Drawing.Size(970, 0);
            this.clientUserControl1.Name = "clientUserControl1";
            this.clientUserControl1.Size = new System.Drawing.Size(970, 418);
            this.clientUserControl1.TabIndex = 0;
            this.clientUserControl1.Load += new System.EventHandler(this.ClientUserControl1_Load);
            // 
            // tabPageOrders
            // 
            this.tabPageOrders.Controls.Add(this.ordersUserControl1);
            this.tabPageOrders.Location = new System.Drawing.Point(4, 22);
            this.tabPageOrders.Name = "tabPageOrders";
            this.tabPageOrders.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageOrders.Size = new System.Drawing.Size(976, 424);
            this.tabPageOrders.TabIndex = 0;
            this.tabPageOrders.Text = "Заказы";
            this.tabPageOrders.UseVisualStyleBackColor = true;
            // 
            // ordersUserControl1
            // 
            this.ordersUserControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ordersUserControl1.Location = new System.Drawing.Point(3, 3);
            this.ordersUserControl1.MinimumSize = new System.Drawing.Size(970, 0);
            this.ordersUserControl1.Name = "ordersUserControl1";
            this.ordersUserControl1.Size = new System.Drawing.Size(970, 418);
            this.ordersUserControl1.TabIndex = 0;
            this.ordersUserControl1.Load += new System.EventHandler(this.OrdersUserControl1_Load);
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabPageOrders);
            this.tabControl.Controls.Add(this.tabPageClient);
            this.tabControl.Controls.Add(this.tabPageCars);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(984, 450);
            this.tabControl.TabIndex = 0;
            // 
            // tabPageCars
            // 
            this.tabPageCars.Location = new System.Drawing.Point(4, 22);
            this.tabPageCars.Name = "tabPageCars";
            this.tabPageCars.Size = new System.Drawing.Size(976, 424);
            this.tabPageCars.TabIndex = 2;
            this.tabPageCars.Text = "Машины";
            this.tabPageCars.UseVisualStyleBackColor = true;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(984, 450);
            this.Controls.Add(this.tabControl);
            this.MinimumSize = new System.Drawing.Size(1000, 39);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.tabPageClient.ResumeLayout(false);
            this.tabPageOrders.ResumeLayout(false);
            this.tabControl.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabPage tabPageClient;
        private UserControls.ClientUserControl clientUserControl1;
        private System.Windows.Forms.TabPage tabPageOrders;
        private UserControls.OrdersUserControl ordersUserControl1;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabPageCars;
    }
}

