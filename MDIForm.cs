using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace B8_Lap_trinh_giao_dien
{
    public partial class MDIForm : Form
    {
        public MDIForm()
        {
            InitializeComponent();
        }

        /* 
         2.Tạo MDI Form
            2.1 Thêm MDI Form:
            - Trong Solution Explorer, click chuột phải vào project → Add → Windows Form → Đặt tên là MDIForm.
            2.2 Thiết lập MDI Form:
            - Chọn MDIForm trong thiết kế.
            - Trong Properties:
                + IsMdiContainer: True.
                + WindowState: Maximized.
            2.3 Thêm MenuStrip:
            - Kéo thả MenuStrip từ Toolbox vào MDIForm.
            - Thiết lập menu như sau:
            - Hệ thống → Đăng xuất, Kết thúc.
            - Đổi tên từng menu item trong Properties:
                + mnuDangXuat: Text = "Đăng xuất".
                + mnuKetThuc: Text = "Kết thúc".
        3. Thiết lập sự kiện Form Đóng
            - Chọn MDIForm, mở tab Properties.
            - Thêm sự kiện FormClosing và FormClosed
         */
        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("Bạn có muốn đăng xuất không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Hide(); // ẩn tạm thời form hiện tại
                frmDangNhap frm = new frmDangNhap();
                frm.Show();
            }
        }
        private void kếtThúcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        // Thực hiện hành động khi form đã đóng(ở đây là thoát chương trình)
        private void MDIForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        // kiểm tra trước khi đóng form. Nếu chọn "No" quá trình đóng sẽ bị hủy
        private void MDIForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            if(MessageBox.Show("Bạn có muốn thoát khỏi chương trình không?", "thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void MDIForm_Load(object sender, EventArgs e)
        {

        }
    }
}