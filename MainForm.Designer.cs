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
            this.ordersUserControl = new CarWash.UserControls.OrdersUserControl();
            this.SuspendLayout();
            // 
            // ordersUserControl
            // 
            this.ordersUserControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ordersUserControl.Location = new System.Drawing.Point(0, 0);
            this.ordersUserControl.Name = "ordersUserControl";
            this.ordersUserControl.Size = new System.Drawing.Size(984, 450);
            this.ordersUserControl.TabIndex = 0;
            this.ordersUserControl.Load += new System.EventHandler(this.OrdersUserControl_Load);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(984, 450);
            this.Controls.Add(this.ordersUserControl);
            this.MinimumSize = new System.Drawing.Size(1000, 39);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private UserControls.OrdersUserControl ordersUserControl;
    }
}

