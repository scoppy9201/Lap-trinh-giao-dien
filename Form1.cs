using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace B4_lap_trinh_giao_dien
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtNhapTen.Text))
            {
                MessageBox.Show("Vui long nhâp tên khách hàng trước khi thanh toán!", "Thông báo", MessageBoxButtons.OK,MessageBoxIcon.Warning); 
                txtNhapTen.Focus();
                return;
            }

            // hiển thị thông báo in hóa đơn
            MessageBox.Show("Hóa đã được in thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            // đóng form in
            this.Close();
        }

        private void btnTongTien_Click(object sender, EventArgs e) // nút tổng tiền
        {
            if (String.IsNullOrEmpty(txtNhapTen.Text))
            {
                MessageBox.Show("Vui lòng nhập tên khách hàng!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtNhapTen.Focus();  // chuyển con trỏ về ô nhập tên khách hàng 
                return;
            }

            // tỉnh tổng tiền 
            double sum = 0;

            // kiem tra cac dich vu 
            if(chkCaoVoi.Checked) sum += 100000;
            if(chkTayTrang.Checked) sum += 1200000;
            if (chkChupHinhRang.Checked) sum += 200000;

            // tinh tien tram rang 
            int soLuongTram = (int)nudTramRang.Value; // Lấy số lượng từ NumericUpDown
            double tienTram = soLuongTram * 80000;
            sum += tienTram;

            // hien thi tong tien 
            txtTongThanhTien.Text = sum.ToString("N0") + "VNĐ"; // hiển thị sô với dấu định dạng phân cách
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
