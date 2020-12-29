namespace CarWash.Forms
{
    partial class AddEditOrderDialog
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.DateLbl = new System.Windows.Forms.Label();
            this.StartLbl = new System.Windows.Forms.Label();
            this.EndLbl = new System.Windows.Forms.Label();
            this.ClientLbl = new System.Windows.Forms.Label();
            this.StockLbl = new System.Windows.Forms.Label();
            this.CarWashLbl = new System.Windows.Forms.Label();
            this.BoxLbl = new System.Windows.Forms.Label();
            this.ServiceLbl = new System.Windows.Forms.Label();
            this.CarLbl = new System.Windows.Forms.Label();
            this.dtmDate = new System.Windows.Forms.DateTimePicker();
            this.dtmStart = new System.Windows.Forms.DateTimePicker();
            this.dtmEnd = new System.Windows.Forms.DateTimePicker();
            this.cbClient = new System.Windows.Forms.ComboBox();
            this.cbStock = new System.Windows.Forms.ComboBox();
            this.cbCarWash = new System.Windows.Forms.ComboBox();
            this.cbBox = new System.Windows.Forms.ComboBox();
            this.cbService = new System.Windows.Forms.ComboBox();
            this.cbCar = new System.Windows.Forms.ComboBox();
            this.btnOK = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // DateLbl
            // 
            this.DateLbl.AutoSize = true;
            this.DateLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DateLbl.Location = new System.Drawing.Point(12, 34);
            this.DateLbl.Name = "DateLbl";
            this.DateLbl.Size = new System.Drawing.Size(40, 16);
            this.DateLbl.TabIndex = 0;
            this.DateLbl.Text = "Дата";
            // 
            // StartLbl
            // 
            this.StartLbl.AutoSize = true;
            this.StartLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.StartLbl.Location = new System.Drawing.Point(12, 69);
            this.StartLbl.Name = "StartLbl";
            this.StartLbl.Size = new System.Drawing.Size(58, 16);
            this.StartLbl.TabIndex = 1;
            this.StartLbl.Text = "Начало";
            // 
            // EndLbl
            // 
            this.EndLbl.AutoSize = true;
            this.EndLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.EndLbl.Location = new System.Drawing.Point(12, 107);
            this.EndLbl.Name = "EndLbl";
            this.EndLbl.Size = new System.Drawing.Size(48, 16);
            this.EndLbl.TabIndex = 2;
            this.EndLbl.Text = "Конец";
            // 
            // ClientLbl
            // 
            this.ClientLbl.AutoSize = true;
            this.ClientLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ClientLbl.Location = new System.Drawing.Point(12, 147);
            this.ClientLbl.Name = "ClientLbl";
            this.ClientLbl.Size = new System.Drawing.Size(55, 16);
            this.ClientLbl.TabIndex = 3;
            this.ClientLbl.Text = "Клиент";
            // 
            // StockLbl
            // 
            this.StockLbl.AutoSize = true;
            this.StockLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.StockLbl.Location = new System.Drawing.Point(12, 185);
            this.StockLbl.Name = "StockLbl";
            this.StockLbl.Size = new System.Drawing.Size(47, 16);
            this.StockLbl.TabIndex = 4;
            this.StockLbl.Text = "Акция";
            // 
            // CarWashLbl
            // 
            this.CarWashLbl.AutoSize = true;
            this.CarWashLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CarWashLbl.Location = new System.Drawing.Point(12, 226);
            this.CarWashLbl.Name = "CarWashLbl";
            this.CarWashLbl.Size = new System.Drawing.Size(80, 16);
            this.CarWashLbl.TabIndex = 5;
            this.CarWashLbl.Text = "Автомойка";
            // 
            // BoxLbl
            // 
            this.BoxLbl.AutoSize = true;
            this.BoxLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.BoxLbl.Location = new System.Drawing.Point(12, 261);
            this.BoxLbl.Name = "BoxLbl";
            this.BoxLbl.Size = new System.Drawing.Size(34, 20);
            this.BoxLbl.TabIndex = 6;
            this.BoxLbl.Text = "Бокс";
            this.BoxLbl.UseCompatibleTextRendering = true;
            // 
            // ServiceLbl
            // 
            this.ServiceLbl.AutoSize = true;
            this.ServiceLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ServiceLbl.Location = new System.Drawing.Point(12, 301);
            this.ServiceLbl.Name = "ServiceLbl";
            this.ServiceLbl.Size = new System.Drawing.Size(54, 16);
            this.ServiceLbl.TabIndex = 7;
            this.ServiceLbl.Text = "Услуга";
            // 
            // CarLbl
            // 
            this.CarLbl.AutoSize = true;
            this.CarLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CarLbl.Location = new System.Drawing.Point(12, 341);
            this.CarLbl.Name = "CarLbl";
            this.CarLbl.Size = new System.Drawing.Size(60, 16);
            this.CarLbl.TabIndex = 8;
            this.CarLbl.Text = "Машина";
            // 
            // dtmDate
            // 
            this.dtmDate.CustomFormat = "yyyy-MM-dd";
            this.dtmDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.dtmDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtmDate.Location = new System.Drawing.Point(82, 34);
            this.dtmDate.Name = "dtmDate";
            this.dtmDate.Size = new System.Drawing.Size(200, 20);
            this.dtmDate.TabIndex = 9;
            this.dtmDate.Value = new System.DateTime(2020, 12, 26, 0, 0, 0, 0);
            // 
            // dtmStart
            // 
            this.dtmStart.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtmStart.Location = new System.Drawing.Point(82, 65);
            this.dtmStart.Name = "dtmStart";
            this.dtmStart.ShowUpDown = true;
            this.dtmStart.Size = new System.Drawing.Size(200, 20);
            this.dtmStart.TabIndex = 10;
            // 
            // dtmEnd
            // 
            this.dtmEnd.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dtmEnd.Location = new System.Drawing.Point(82, 103);
            this.dtmEnd.Name = "dtmEnd";
            this.dtmEnd.ShowUpDown = true;
            this.dtmEnd.Size = new System.Drawing.Size(200, 20);
            this.dtmEnd.TabIndex = 11;
            // 
            // cbClient
            // 
            this.cbClient.FormattingEnabled = true;
            this.cbClient.Location = new System.Drawing.Point(82, 142);
            this.cbClient.Name = "cbClient";
            this.cbClient.Size = new System.Drawing.Size(200, 21);
            this.cbClient.TabIndex = 12;
            this.cbClient.SelectedIndexChanged += new System.EventHandler(this.CbClient_SelectedIndexChanged);
            // 
            // cbStock
            // 
            this.cbStock.FormattingEnabled = true;
            this.cbStock.Location = new System.Drawing.Point(82, 180);
            this.cbStock.Name = "cbStock";
            this.cbStock.Size = new System.Drawing.Size(200, 21);
            this.cbStock.TabIndex = 13;
            // 
            // cbCarWash
            // 
            this.cbCarWash.FormattingEnabled = true;
            this.cbCarWash.Location = new System.Drawing.Point(98, 221);
            this.cbCarWash.Name = "cbCarWash";
            this.cbCarWash.Size = new System.Drawing.Size(184, 21);
            this.cbCarWash.TabIndex = 14;
            this.cbCarWash.SelectedIndexChanged += new System.EventHandler(this.CbCarWash_SelectedIndexChanged);
            // 
            // cbBox
            // 
            this.cbBox.FormattingEnabled = true;
            this.cbBox.Location = new System.Drawing.Point(82, 260);
            this.cbBox.Name = "cbBox";
            this.cbBox.Size = new System.Drawing.Size(200, 21);
            this.cbBox.TabIndex = 15;
            // 
            // cbService
            // 
            this.cbService.FormattingEnabled = true;
            this.cbService.Location = new System.Drawing.Point(82, 300);
            this.cbService.Name = "cbService";
            this.cbService.Size = new System.Drawing.Size(200, 21);
            this.cbService.TabIndex = 16;
            // 
            // cbCar
            // 
            this.cbCar.FormattingEnabled = true;
            this.cbCar.Location = new System.Drawing.Point(82, 341);
            this.cbCar.Name = "cbCar";
            this.cbCar.Size = new System.Drawing.Size(200, 21);
            this.cbCar.TabIndex = 17;
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(82, 391);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 18;
            this.btnOK.Text = "OK";
            this.btnOK.UseVisualStyleBackColor = true;
            this.btnOK.Click += new System.EventHandler(this.BtnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(207, 391);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 19;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.BtnCancel_Click);
            // 
            // AddEditOrderDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(315, 438);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.cbCar);
            this.Controls.Add(this.cbService);
            this.Controls.Add(this.cbBox);
            this.Controls.Add(this.cbCarWash);
            this.Controls.Add(this.cbStock);
            this.Controls.Add(this.cbClient);
            this.Controls.Add(this.dtmEnd);
            this.Controls.Add(this.dtmStart);
            this.Controls.Add(this.dtmDate);
            this.Controls.Add(this.CarLbl);
            this.Controls.Add(this.ServiceLbl);
            this.Controls.Add(this.BoxLbl);
            this.Controls.Add(this.CarWashLbl);
            this.Controls.Add(this.StockLbl);
            this.Controls.Add(this.ClientLbl);
            this.Controls.Add(this.EndLbl);
            this.Controls.Add(this.StartLbl);
            this.Controls.Add(this.DateLbl);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "AddEditOrderDialog";
            this.Text = "AddEditOrder";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label DateLbl;
        private System.Windows.Forms.Label StartLbl;
        private System.Windows.Forms.Label EndLbl;
        private System.Windows.Forms.Label ClientLbl;
        private System.Windows.Forms.Label StockLbl;
        private System.Windows.Forms.Label CarWashLbl;
        private System.Windows.Forms.Label BoxLbl;
        private System.Windows.Forms.Label ServiceLbl;
        private System.Windows.Forms.Label CarLbl;
        private System.Windows.Forms.DateTimePicker dtmDate;
        private System.Windows.Forms.DateTimePicker dtmStart;
        private System.Windows.Forms.DateTimePicker dtmEnd;
        private System.Windows.Forms.ComboBox cbClient;
        private System.Windows.Forms.ComboBox cbStock;
        private System.Windows.Forms.ComboBox cbCarWash;
        private System.Windows.Forms.ComboBox cbBox;
        private System.Windows.Forms.ComboBox cbService;
        private System.Windows.Forms.ComboBox cbCar;
        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.Button btnCancel;
    }
}