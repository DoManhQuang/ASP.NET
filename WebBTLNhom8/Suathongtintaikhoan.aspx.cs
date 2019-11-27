using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Suathongtintaikhoan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-DI6CE7U\SQLEXPRESS;Initial Catalog=BTLCSDLWEB; Integrated Security=True");
    Quang_Khachhang khachhang = null;
   // Class1 objUser = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        //objUser = new Class1();
        khachhang = (Quang_Khachhang)Session["users"];
        txtemail.Text = khachhang.getEmail();
        txtdiachi.Text = "";
        txtmatkhau.Text = "";
        txtNgaysinh.Text = "";
        txtten.Text = khachhang.getTenKH();
        txtsodienthoai.Text = khachhang.getSdt();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
           
        try
        {
            SqlDataSource1.UpdateCommand = "Update tblTaikhoan set Hoten='" + txtten.Text + "',Ngaysinh='" + txtNgaysinh.Text + "',Diachi='" + txtdiachi.Text + "', Sodienthoai='" + txtsodienthoai.Text + "', email='" + txtemail.Text + "',Matkhau='" + txtmatkhau.Text + "' Where email='"+ txtemail.Text+"'";

            SqlDataSource1.Update();
            lblthongbao.Text = "Cập nhật  thành công ";
        }
                catch (Exception ex)
        {
            lblthongbao.Text = "Cập nhật không thành công " + ex.Message.ToString();
        }
    }
}