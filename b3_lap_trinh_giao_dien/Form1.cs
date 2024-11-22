using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace b3_lap_trinh_giao_dien
{
    public partial class Form1 : Form
    {
        // Khai báo ListViewItem để lưu trữ dữ liệu khi người dùng thêm vào ListView
        ListViewItem itemLV;

        // Khai báo một bộ sưu tập các mục được chọn trong ListView
        ListView.SelectedListViewItemCollection itemSelect;

        public Form1()
        {
            InitializeComponent();
        }

        // Hàm để thêm một danh sách file vào ListView
        private void LoadDirectory(object sender, EventArgs e)
        {
            if (txtPath.Text == "") return;
            if(Directory.Exists(txtPath.Text) == false)
            {
                MessageBox.Show("Đường dẫn bạn nhập không tồn tại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                txtPath.Focus();
                return;
            }
            // Lấy thông tin thư mục
            DirectoryInfo dir = new DirectoryInfo(txtPath.Text);
            lvwDanhSach.Items.Clear();
            foreach (DirectoryInfo subDir in dir.GetDirectories())
            {
                itemLV = new ListViewItem(subDir.Name); // tên 
                itemLV.SubItems.Add("Folder"); // loại 
                itemLV.SubItems.Add(subDir.LastWriteTime.ToString()); // ngày 
                itemLV.SubItems.Add(""); // kich thuoc
                lvwDanhSach.Items.Add(itemLV);
            }
            foreach (FileInfo subFile in dir.GetFiles())
            {
                itemLV = new ListViewItem(subFile.Name);
                itemLV.SubItems.Add("File");
                itemLV.SubItems.Add(subFile.LastWriteTime.ToString());
                itemLV.SubItems.Add(subFile.Length.ToString());
                lvwDanhSach.Items.Add(itemLV);
            }
        }
        private void lvwDanhSach_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lvwDanhSach.SelectedItems.Count == 0)
             return;

        // lay thu muc dang chon 
         ListViewItem selecttedItem = lvwDanhSach.SelectedItems[0];

        // gán giá tri cảu các côt vào textbox
        txtName.Text = selecttedItem.Text;
        txtDate.Text = selecttedItem.SubItems[2].Text;
        txtSize.Text = selecttedItem.SubItems[3].Text;

        if (selecttedItem.SubItems[1].Text == "File")
        {
            cboType.SelectedItem = "File";
        }else if (selecttedItem.SubItems[1].Text == "Folder")
        {
            cboType.SelectedItem = "Folder";
        }    
    }
}
}
