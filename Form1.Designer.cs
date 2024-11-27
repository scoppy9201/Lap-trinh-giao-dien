namespace B6_lap_trinh_giao_dien
{
    partial class Form1
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
            this.lblLopA = new System.Windows.Forms.Label();
            this.lblLopB = new System.Windows.Forms.Label();
            this.lblNhaphoten = new System.Windows.Forms.Label();
            this.lblTitle = new System.Windows.Forms.Label();
            this.txtHoTen = new System.Windows.Forms.TextBox();
            this.lstA = new System.Windows.Forms.ListBox();
            this.lstB = new System.Windows.Forms.ListBox();
            this.btnChuyenNguocAll = new System.Windows.Forms.Button();
            this.btnKetThuc = new System.Windows.Forms.Button();
            this.btnNhap = new System.Windows.Forms.Button();
            this.btnXoaTrang = new System.Windows.Forms.Button();
            this.btnChuyen1 = new System.Windows.Forms.Button();
            this.btnChuyenNguoc1 = new System.Windows.Forms.Button();
            this.btnChuyenAll = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblLopA
            // 
            this.lblLopA.AutoSize = true;
            this.lblLopA.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLopA.Location = new System.Drawing.Point(40, 119);
            this.lblLopA.Name = "lblLopA";
            this.lblLopA.Size = new System.Drawing.Size(57, 23);
            this.lblLopA.TabIndex = 0;
            this.lblLopA.Text = "Lớp A";
            // 
            // lblLopB
            // 
            this.lblLopB.AutoSize = true;
            this.lblLopB.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLopB.Location = new System.Drawing.Point(337, 119);
            this.lblLopB.Name = "lblLopB";
            this.lblLopB.Size = new System.Drawing.Size(57, 23);
            this.lblLopB.TabIndex = 1;
            this.lblLopB.Text = "Lớp B";
            // 
            // lblNhaphoten
            // 
            this.lblNhaphoten.AutoSize = true;
            this.lblNhaphoten.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNhaphoten.Location = new System.Drawing.Point(24, 73);
            this.lblNhaphoten.Name = "lblNhaphoten";
            this.lblNhaphoten.Size = new System.Drawing.Size(112, 23);
            this.lblNhaphoten.TabIndex = 2;
            this.lblNhaphoten.Text = "Nhập họ tên:";
            // 
            // lblTitle
            // 
            this.lblTitle.AutoSize = true;
            this.lblTitle.Font = new System.Drawing.Font("Sitka Text", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitle.Location = new System.Drawing.Point(119, 9);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(302, 35);
            this.lblTitle.TabIndex = 3;
            this.lblTitle.Text = "DANH SÁCH SINH VIÊN ";
            // 
            // txtHoTen
            // 
            this.txtHoTen.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHoTen.Location = new System.Drawing.Point(144, 70);
            this.txtHoTen.Name = "txtHoTen";
            this.txtHoTen.Size = new System.Drawing.Size(252, 28);
            this.txtHoTen.TabIndex = 4;
            this.txtHoTen.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // lstA
            // 
            this.lstA.BackColor = System.Drawing.SystemColors.Menu;
            this.lstA.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstA.FormattingEnabled = true;
            this.lstA.ItemHeight = 23;
            this.lstA.Location = new System.Drawing.Point(42, 155);
            this.lstA.Name = "lstA";
            this.lstA.Size = new System.Drawing.Size(185, 280);
            this.lstA.TabIndex = 5;
            // 
            // lstB
            // 
            this.lstB.BackColor = System.Drawing.SystemColors.Menu;
            this.lstB.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstB.FormattingEnabled = true;
            this.lstB.ItemHeight = 23;
            this.lstB.Location = new System.Drawing.Point(331, 155);
            this.lstB.Name = "lstB";
            this.lstB.Size = new System.Drawing.Size(176, 280);
            this.lstB.TabIndex = 6;
            this.lstB.SelectedIndexChanged += new System.EventHandler(this.listBox2_SelectedIndexChanged);
            // 
            // btnChuyenNguocAll
            // 
            this.btnChuyenNguocAll.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btnChuyenNguocAll.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChuyenNguocAll.Location = new System.Drawing.Point(245, 366);
            this.btnChuyenNguocAll.Name = "btnChuyenNguocAll";
            this.btnChuyenNguocAll.Size = new System.Drawing.Size(60, 34);
            this.btnChuyenNguocAll.TabIndex = 7;
            this.btnChuyenNguocAll.Text = "<<";
            this.btnChuyenNguocAll.UseVisualStyleBackColor = false;
            this.btnChuyenNguocAll.Click += new System.EventHandler(this.btnChuyenNguocAll_Click);
            // 
            // btnKetThuc
            // 
            this.btnKetThuc.BackColor = System.Drawing.Color.IndianRed;
            this.btnKetThuc.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKetThuc.Location = new System.Drawing.Point(402, 464);
            this.btnKetThuc.Name = "btnKetThuc";
            this.btnKetThuc.Size = new System.Drawing.Size(115, 34);
            this.btnKetThuc.TabIndex = 8;
            this.btnKetThuc.Text = "Kết thúc";
            this.btnKetThuc.UseVisualStyleBackColor = false;
            this.btnKetThuc.Click += new System.EventHandler(this.btnKetThuc_Click);
            // 
            // btnNhap
            // 
            this.btnNhap.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnNhap.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNhap.Location = new System.Drawing.Point(413, 67);
            this.btnNhap.Name = "btnNhap";
            this.btnNhap.Size = new System.Drawing.Size(104, 34);
            this.btnNhap.TabIndex = 9;
            this.btnNhap.Text = "Nhập";
            this.btnNhap.UseVisualStyleBackColor = false;
            this.btnNhap.Click += new System.EventHandler(this.btnNhap_Click);
            // 
            // btnXoaTrang
            // 
            this.btnXoaTrang.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnXoaTrang.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaTrang.Location = new System.Drawing.Point(42, 464);
            this.btnXoaTrang.Name = "btnXoaTrang";
            this.btnXoaTrang.Size = new System.Drawing.Size(114, 34);
            this.btnXoaTrang.TabIndex = 10;
            this.btnXoaTrang.Text = "Xóa trắng";
            this.btnXoaTrang.UseVisualStyleBackColor = false;
            this.btnXoaTrang.Click += new System.EventHandler(this.btnXoaTrang_Click);
            // 
            // btnChuyen1
            // 
            this.btnChuyen1.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btnChuyen1.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChuyen1.Location = new System.Drawing.Point(245, 182);
            this.btnChuyen1.Name = "btnChuyen1";
            this.btnChuyen1.Size = new System.Drawing.Size(60, 34);
            this.btnChuyen1.TabIndex = 11;
            this.btnChuyen1.Text = ">";
            this.btnChuyen1.UseVisualStyleBackColor = false;
            this.btnChuyen1.Click += new System.EventHandler(this.btnChuyen1_Click);
            // 
            // btnChuyenNguoc1
            // 
            this.btnChuyenNguoc1.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btnChuyenNguoc1.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChuyenNguoc1.Location = new System.Drawing.Point(245, 302);
            this.btnChuyenNguoc1.Name = "btnChuyenNguoc1";
            this.btnChuyenNguoc1.Size = new System.Drawing.Size(60, 34);
            this.btnChuyenNguoc1.TabIndex = 12;
            this.btnChuyenNguoc1.Text = "<";
            this.btnChuyenNguoc1.UseVisualStyleBackColor = false;
            this.btnChuyenNguoc1.Click += new System.EventHandler(this.btnChuyenNguoc1_Click);
            // 
            // btnChuyenAll
            // 
            this.btnChuyenAll.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btnChuyenAll.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChuyenAll.Location = new System.Drawing.Point(245, 243);
            this.btnChuyenAll.Name = "btnChuyenAll";
            this.btnChuyenAll.Size = new System.Drawing.Size(60, 34);
            this.btnChuyenAll.TabIndex = 13;
            this.btnChuyenAll.Text = ">>";
            this.btnChuyenAll.UseVisualStyleBackColor = false;
            this.btnChuyenAll.Click += new System.EventHandler(this.btnChuyenAll_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.GhostWhite;
            this.ClientSize = new System.Drawing.Size(549, 509);
            this.Controls.Add(this.btnChuyenAll);
            this.Controls.Add(this.btnChuyenNguoc1);
            this.Controls.Add(this.btnChuyen1);
            this.Controls.Add(this.btnXoaTrang);
            this.Controls.Add(this.btnNhap);
            this.Controls.Add(this.btnKetThuc);
            this.Controls.Add(this.btnChuyenNguocAll);
            this.Controls.Add(this.lstB);
            this.Controls.Add(this.lstA);
            this.Controls.Add(this.txtHoTen);
            this.Controls.Add(this.lblTitle);
            this.Controls.Add(this.lblNhaphoten);
            this.Controls.Add(this.lblLopB);
            this.Controls.Add(this.lblLopA);
            this.Name = "Form1";
            this.Text = "Danh sách";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblLopA;
        private System.Windows.Forms.Label lblLopB;
        private System.Windows.Forms.Label lblNhaphoten;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.TextBox txtHoTen;
        private System.Windows.Forms.ListBox lstA;
        private System.Windows.Forms.ListBox lstB;
        private System.Windows.Forms.Button btnChuyenNguocAll;
        private System.Windows.Forms.Button btnKetThuc;
        private System.Windows.Forms.Button btnNhap;
        private System.Windows.Forms.Button btnXoaTrang;
        private System.Windows.Forms.Button btnChuyen1;
        private System.Windows.Forms.Button btnChuyenNguoc1;
        private System.Windows.Forms.Button btnChuyenAll;
    }
}

