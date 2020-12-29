namespace CarWash.UserControls
{
    partial class OrdersUserControl
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

        #region Код, автоматически созданный конструктором компонентов

        /// <summary> 
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.panelTop = new System.Windows.Forms.Panel();
            this.bthEdit = new System.Windows.Forms.Button();
            this.label = new System.Windows.Forms.Label();
            this.addBtn = new System.Windows.Forms.Button();
            this.dgvOrders = new System.Windows.Forms.DataGridView();
            this.Id_Order = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DateOrder = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TimeOfStartWork = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TimeOfEndWork = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OwnerFIO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.StockName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CarWashName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BoxName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Service = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CarNumber = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Cost = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dtnDelete = new System.Windows.Forms.Button();
            this.panelTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvOrders)).BeginInit();
            this.SuspendLayout();
            // 
            // panelTop
            // 
            this.panelTop.Controls.Add(this.dtnDelete);
            this.panelTop.Controls.Add(this.bthEdit);
            this.panelTop.Controls.Add(this.label);
            this.panelTop.Controls.Add(this.addBtn);
            this.panelTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTop.Location = new System.Drawing.Point(0, 0);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(970, 49);
            this.panelTop.TabIndex = 0;
            // 
            // bthEdit
            // 
            this.bthEdit.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.bthEdit.Location = new System.Drawing.Point(662, 15);
            this.bthEdit.Name = "bthEdit";
            this.bthEdit.Size = new System.Drawing.Size(100, 25);
            this.bthEdit.TabIndex = 2;
            this.bthEdit.Text = "Изменить";
            this.bthEdit.UseVisualStyleBackColor = true;
            this.bthEdit.Click += new System.EventHandler(this.BthEdit_Click);
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label.Location = new System.Drawing.Point(3, 15);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(86, 25);
            this.label.TabIndex = 1;
            this.label.Text = "Заказы";
            // 
            // addBtn
            // 
            this.addBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.addBtn.Location = new System.Drawing.Point(490, 15);
            this.addBtn.Name = "addBtn";
            this.addBtn.Size = new System.Drawing.Size(100, 25);
            this.addBtn.TabIndex = 0;
            this.addBtn.Text = "Добавить";
            this.addBtn.UseVisualStyleBackColor = true;
            this.addBtn.Click += new System.EventHandler(this.AddBtn_Click);
            // 
            // dgvOrders
            // 
            this.dgvOrders.AllowUserToAddRows = false;
            this.dgvOrders.AllowUserToDeleteRows = false;
            this.dgvOrders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvOrders.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id_Order,
            this.DateOrder,
            this.TimeOfStartWork,
            this.TimeOfEndWork,
            this.OwnerFIO,
            this.StockName,
            this.CarWashName,
            this.BoxName,
            this.Service,
            this.CarNumber,
            this.Cost});
            this.dgvOrders.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvOrders.Location = new System.Drawing.Point(0, 49);
            this.dgvOrders.Name = "dgvOrders";
            this.dgvOrders.ReadOnly = true;
            this.dgvOrders.Size = new System.Drawing.Size(970, 392);
            this.dgvOrders.TabIndex = 1;
            // 
            // Id_Order
            // 
            this.Id_Order.DataPropertyName = "Id_Order";
            this.Id_Order.HeaderText = "Id";
            this.Id_Order.Name = "Id_Order";
            this.Id_Order.ReadOnly = true;
            this.Id_Order.Width = 30;
            // 
            // DateOrder
            // 
            this.DateOrder.DataPropertyName = "DateOrder";
            this.DateOrder.HeaderText = "Дата заказа";
            this.DateOrder.Name = "DateOrder";
            this.DateOrder.ReadOnly = true;
            this.DateOrder.Width = 90;
            // 
            // TimeOfStartWork
            // 
            this.TimeOfStartWork.DataPropertyName = "TimeOfStartWork";
            this.TimeOfStartWork.HeaderText = "Начало работ";
            this.TimeOfStartWork.Name = "TimeOfStartWork";
            this.TimeOfStartWork.ReadOnly = true;
            this.TimeOfStartWork.Width = 70;
            // 
            // TimeOfEndWork
            // 
            this.TimeOfEndWork.DataPropertyName = "TimeOfEndWork";
            this.TimeOfEndWork.HeaderText = "Окончание работ";
            this.TimeOfEndWork.Name = "TimeOfEndWork";
            this.TimeOfEndWork.ReadOnly = true;
            this.TimeOfEndWork.Width = 70;
            // 
            // OwnerFIO
            // 
            this.OwnerFIO.DataPropertyName = "OwnerFIO";
            this.OwnerFIO.HeaderText = "ФИО Клиента";
            this.OwnerFIO.Name = "OwnerFIO";
            this.OwnerFIO.ReadOnly = true;
            // 
            // StockName
            // 
            this.StockName.DataPropertyName = "StockName";
            this.StockName.HeaderText = "Акция";
            this.StockName.Name = "StockName";
            this.StockName.ReadOnly = true;
            this.StockName.Width = 130;
            // 
            // CarWashName
            // 
            this.CarWashName.DataPropertyName = "CarWashName";
            this.CarWashName.HeaderText = "Автомойка";
            this.CarWashName.Name = "CarWashName";
            this.CarWashName.ReadOnly = true;
            // 
            // BoxName
            // 
            this.BoxName.DataPropertyName = "BoxName";
            this.BoxName.HeaderText = "Бокс";
            this.BoxName.Name = "BoxName";
            this.BoxName.ReadOnly = true;
            this.BoxName.Width = 60;
            // 
            // Service
            // 
            this.Service.DataPropertyName = "ServiceName";
            this.Service.HeaderText = "Услуга";
            this.Service.Name = "Service";
            this.Service.ReadOnly = true;
            this.Service.Width = 130;
            // 
            // CarNumber
            // 
            this.CarNumber.DataPropertyName = "CarNumber";
            this.CarNumber.HeaderText = "ГосНомер";
            this.CarNumber.Name = "CarNumber";
            this.CarNumber.ReadOnly = true;
            this.CarNumber.Width = 90;
            // 
            // Cost
            // 
            this.Cost.DataPropertyName = "Cost";
            this.Cost.HeaderText = "Цена";
            this.Cost.Name = "Cost";
            this.Cost.ReadOnly = true;
            this.Cost.Width = 70;
            // 
            // dtnDelete
            // 
            this.dtnDelete.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.dtnDelete.Location = new System.Drawing.Point(833, 15);
            this.dtnDelete.Name = "dtnDelete";
            this.dtnDelete.Size = new System.Drawing.Size(100, 25);
            this.dtnDelete.TabIndex = 3;
            this.dtnDelete.Text = "Удалить";
            this.dtnDelete.UseVisualStyleBackColor = true;
            this.dtnDelete.Click += new System.EventHandler(this.DtnDelete_Click);
            // 
            // OrdersUserControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.dgvOrders);
            this.Controls.Add(this.panelTop);
            this.MinimumSize = new System.Drawing.Size(970, 0);
            this.Name = "OrdersUserControl";
            this.Size = new System.Drawing.Size(970, 441);
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvOrders)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.DataGridView dgvOrders;
        private System.Windows.Forms.Button addBtn;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id_Order;
        private System.Windows.Forms.DataGridViewTextBoxColumn DateOrder;
        private System.Windows.Forms.DataGridViewTextBoxColumn TimeOfStartWork;
        private System.Windows.Forms.DataGridViewTextBoxColumn TimeOfEndWork;
        private System.Windows.Forms.DataGridViewTextBoxColumn OwnerFIO;
        private System.Windows.Forms.DataGridViewTextBoxColumn StockName;
        private System.Windows.Forms.DataGridViewTextBoxColumn CarWashName;
        private System.Windows.Forms.DataGridViewTextBoxColumn BoxName;
        private System.Windows.Forms.DataGridViewTextBoxColumn Service;
        private System.Windows.Forms.DataGridViewTextBoxColumn CarNumber;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cost;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.Button bthEdit;
        private System.Windows.Forms.Button dtnDelete;
    }
}
