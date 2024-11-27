using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace B6_lap_trinh_giao_dien
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void listBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnNhap_Click(object sender, EventArgs e)
        {
            // kiểm tra nếu textbox trống 
            if (string.IsNullOrWhiteSpace(txtHoTen.Text))
            {
                MessageBox.Show("Vui lòng nhạp họ tên!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // thêm tên vào danh sách lớp A
            lstA.Items.Add(txtHoTen.Text);
            txtHoTen.Clear(); // xóa textbox sau khi thêm
            txtHoTen.Focus(); // con tro quay lại textbox
        }

        private void btnChuyen1_Click(object sender, EventArgs e)
        {
            // chuyển 1 sinh viên từ lớp A sang lớp B
            if (lstA.SelectedItem != null)
            {
                lstB.Items.Add(lstA.SelectedItem); // thêm 1 sinh viên từ lớp A sáng lớp B 
                lstA.Items.Remove(lstA.SelectedItem); // xó sinh viên vửa thêm ra khỏi lớp A 
            }
            else
            {
                MessageBox.Show("Vui lòng chọn sinh viên cần chuyển!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
        }

        private void btnChuyenAll_Click(object sender, EventArgs e)
        {
            // chuyển tất cả sinh viên từ lớp A sáng lớp B 
            foreach (var item in lstA.Items)
            {
                lstB.Items.Add(item);
            }
            lstA.Items.Clear(); // xóa toàn bọ lớp A sau khi chuyển
        }

        private void btnChuyenNguoc1_Click(object sender, EventArgs e)
        {
            if (lstB.SelectedItem != null)
            {
                lstA.Items.Add(lstB.SelectedItem);
                lstB.Items.Remove(lstB.SelectedItem);
            }
            else
            {
                MessageBox.Show("Vui lòng chọn sinh viên cần chuyển!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
        }

        private void btnChuyenNguocAll_Click(object sender, EventArgs e)
        {
            foreach (var item in lstB.Items)
            {
                lstA.Items.Add(item);
            }
            lstB.Items.Clear();
        }

        private void btnXoaTrang_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn xóa toàn bộ danh sách lớp A không ?", "Xác nhậm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                lstA.Items.Clear();
            }
        }

        private void btnKetThuc_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}