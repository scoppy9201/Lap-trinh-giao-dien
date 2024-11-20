namespace b3_lap_trinh_giao_dien
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
            this.lvwDanhSach = new System.Windows.Forms.ListView();
            this.Name = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.CreationDate = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FileType = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.FileSize = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmdLoatDirectory = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtPath = new System.Windows.Forms.TextBox();
            this.lblPat = new System.Windows.Forms.Label();
            this.lbl_name = new System.Windows.Forms.Label();
            this.lbl_date = new System.Windows.Forms.Label();
            this.lbl_type = new System.Windows.Forms.Label();
            this.lbl_size = new System.Windows.Forms.Label();
            this.txtSize = new System.Windows.Forms.TextBox();
            this.txtType = new System.Windows.Forms.TextBox();
            this.txtDate = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lvwDanhSach
            // 
            this.lvwDanhSach.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.Name,
            this.CreationDate,
            this.FileType,
            this.FileSize});
            this.lvwDanhSach.FullRowSelect = true;
            this.lvwDanhSach.GridLines = true;
            this.lvwDanhSach.HideSelection = false;
            this.lvwDanhSach.Location = new System.Drawing.Point(25, 84);
            this.lvwDanhSach.Name = "lvwDanhSach";
            this.lvwDanhSach.Size = new System.Drawing.Size(680, 354);
            this.lvwDanhSach.TabIndex = 0;
            this.lvwDanhSach.UseCompatibleStateImageBehavior = false;
            this.lvwDanhSach.View = System.Windows.Forms.View.Details;
            this.lvwDanhSach.SelectedIndexChanged += new System.EventHandler(this.lvwDanhSach_SelectedIndexChanged);
            // 
            // Name
            // 
            this.Name.Text = "Name";
            this.Name.Width = 300;
            // 
            // CreationDate
            // 
            this.CreationDate.Text = "Date";
            this.CreationDate.Width = 130;
            // 
            // FileType
            // 
            this.FileType.Text = "Type";
            this.FileType.Width = 125;
            // 
            // FileSize
            // 
            this.FileSize.Text = "Size";
            this.FileSize.Width = 125;
            // 
            // cmdLoatDirectory
            // 
            this.cmdLoatDirectory.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmdLoatDirectory.Location = new System.Drawing.Point(469, 36);
            this.cmdLoatDirectory.Name = "cmdLoatDirectory";
            this.cmdLoatDirectory.Size = new System.Drawing.Size(140, 30);
            this.cmdLoatDirectory.TabIndex = 1;
            this.cmdLoatDirectory.Text = "Load Directory";
            this.cmdLoatDirectory.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(56, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 13);
            this.label1.TabIndex = 2;
            // 
            // txtPath
            // 
            this.txtPath.Location = new System.Drawing.Point(89, 36);
            this.txtPath.Multiline = true;
            this.txtPath.Name = "txtPath";
            this.txtPath.Size = new System.Drawing.Size(354, 30);
            this.txtPath.TabIndex = 3;
            // 
            // lblPat
            // 
            this.lblPat.AutoSize = true;
            this.lblPat.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPat.Location = new System.Drawing.Point(21, 38);
            this.lblPat.Name = "lblPat";
            this.lblPat.Size = new System.Drawing.Size(52, 23);
            this.lblPat.TabIndex = 4;
            this.lblPat.Text = "Path:";
            // 
            // lbl_name
            // 
            this.lbl_name.AutoSize = true;
            this.lbl_name.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_name.Location = new System.Drawing.Point(721, 84);
            this.lbl_name.Name = "lbl_name";
            this.lbl_name.Size = new System.Drawing.Size(61, 23);
            this.lbl_name.TabIndex = 5;
            this.lbl_name.Text = "Name:";
            // 
            // lbl_date
            // 
            this.lbl_date.AutoSize = true;
            this.lbl_date.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_date.Location = new System.Drawing.Point(722, 132);
            this.lbl_date.Name = "lbl_date";
            this.lbl_date.Size = new System.Drawing.Size(53, 23);
            this.lbl_date.TabIndex = 6;
            this.lbl_date.Text = "Date:";
            // 
            // lbl_type
            // 
            this.lbl_type.AutoSize = true;
            this.lbl_type.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_type.Location = new System.Drawing.Point(722, 183);
            this.lbl_type.Name = "lbl_type";
            this.lbl_type.Size = new System.Drawing.Size(55, 23);
            this.lbl_type.TabIndex = 7;
            this.lbl_type.Text = "Type:";
            // 
            // lbl_size
            // 
            this.lbl_size.AutoSize = true;
            this.lbl_size.Font = new System.Drawing.Font("Sitka Text", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_size.Location = new System.Drawing.Point(722, 235);
            this.lbl_size.Name = "lbl_size";
            this.lbl_size.Size = new System.Drawing.Size(49, 23);
            this.lbl_size.TabIndex = 8;
            this.lbl_size.Text = "Size:";
            // 
            // txtSize
            // 
            this.txtSize.Location = new System.Drawing.Point(788, 231);
            this.txtSize.Multiline = true;
            this.txtSize.Name = "txtSize";
            this.txtSize.Size = new System.Drawing.Size(222, 27);
            this.txtSize.TabIndex = 9;
            // 
            // txtType
            // 
            this.txtType.Location = new System.Drawing.Point(788, 179);
            this.txtType.Multiline = true;
            this.txtType.Name = "txtType";
            this.txtType.Size = new System.Drawing.Size(222, 27);
            this.txtType.TabIndex = 10;
            // 
            // txtDate
            // 
            this.txtDate.Location = new System.Drawing.Point(788, 128);
            this.txtDate.Multiline = true;
            this.txtDate.Name = "txtDate";
            this.txtDate.Size = new System.Drawing.Size(222, 27);
            this.txtDate.TabIndex = 11;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(788, 84);
            this.txtName.Multiline = true;
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(222, 27);
            this.txtName.TabIndex = 12;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1022, 450);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.txtDate);
            this.Controls.Add(this.txtType);
            this.Controls.Add(this.txtSize);
            this.Controls.Add(this.lbl_size);
            this.Controls.Add(this.lbl_type);
            this.Controls.Add(this.lbl_date);
            this.Controls.Add(this.lbl_name);
            this.Controls.Add(this.lblPat);
            this.Controls.Add(this.txtPath);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmdLoatDirectory);
            this.Controls.Add(this.lvwDanhSach);
            this.Name = "Form1";
            this.Text = "File";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListView lvwDanhSach;
        private System.Windows.Forms.Button cmdLoatDirectory;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtPath;
        private System.Windows.Forms.ColumnHeader Name;
        private System.Windows.Forms.Label lblPat;
        private System.Windows.Forms.ColumnHeader CreationDate;
        private System.Windows.Forms.ColumnHeader FileType;
        private System.Windows.Forms.ColumnHeader FileSize;
        private System.Windows.Forms.Label lbl_name;
        private System.Windows.Forms.Label lbl_date;
        private System.Windows.Forms.Label lbl_type;
        private System.Windows.Forms.Label lbl_size;
        private System.Windows.Forms.TextBox txtSize;
        private System.Windows.Forms.TextBox txtType;
        private System.Windows.Forms.TextBox txtDate;
        private System.Windows.Forms.TextBox txtName;
    }
}

