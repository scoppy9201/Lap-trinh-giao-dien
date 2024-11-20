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
        }
    }
}
