using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Dangky : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-DI6CE7U\SQLEXPRESS;Initial Catalog=BTLCSDLWEB; Integrated Security=True"); 
    protected void Page_Load(object sender, EventArgs e)
    {
        lblthongbao.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        DataView dv = (DataView) SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        Class1 objuser = new Class1();
        if (num > 0)
        {
            lblthongbao.Text = "Tên đăng nhập đã tồn tại";
        }
        else
        {
            Class1 objUser = new Class1();
            objUser.Hoten = txtten.Text;
            objUser.Ngaysinh = txtNgaysinh.Text;
            objUser.Sodienthoai = txtsodienthoai.Text;
            objUser.Diachi = txtdiachi.Text;
            objUser.email = txtemail.Text;
            Session.Add("User", objUser);
            con.Open();

            string sqlInsertTaikhoan = "Insert into tblTaikhoan values (N'"+txtten.Text.Trim()+"', '"+txtNgaysinh.Text.Trim()+"', N'"+txtdiachi.Text.Trim()+"', '"+txtsodienthoai.Text.Trim()+"', '"+txtemail.Text.Trim()+"', '"+txtmatkhau.Text.Trim()+"', '0')";
            SqlCommand cmd = new SqlCommand(sqlInsertTaikhoan, con);
            //cmd.Parameters.AddWithValue("Hoten", txtten.Text.Trim());
            //cmd.Parameters.AddWithValue("Ngaysinh", txtNgaysinh.Text.Trim());
            //cmd.Parameters.AddWithValue("Diachi", txtdiachi.Text.Trim());
            //cmd.Parameters.AddWithValue("Sodienthoai", txtsodienthoai.Text.Trim());
            //cmd.Parameters.AddWithValue("email", txtemail.Text.Trim());
            //cmd.Parameters.AddWithValue("Matkhau", txtmatkhau.Text.Trim());

            try
            {
                SqlDataReader dr = cmd.ExecuteReader();
                lblthongbao.Text = "Đăng ký thành công ";
                Response.Redirect("Thongtintaikhoan.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                lblthongbao.Text = "Đăng ký không thành công " + ex.Message.ToString();
            }
        }

    }
}