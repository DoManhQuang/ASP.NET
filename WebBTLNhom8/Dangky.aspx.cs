using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Dangky : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BTLCSDLWEBConnectionString2"].ToString()); 
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
            lblthongbao.Text = "Email đã tồn tại";
        }
        else
        {
            Class1 objUser = new Class1();
            objUser.Hoten = txtten.Text;
            objUser.Ngaysinh = Calendar1.SelectedDate.ToString();
            objUser.Sodienthoai = txtsodienthoai.Text;
            objUser.Diachi = txtdiachi.Text;
            objUser.email = txtemail.Text;
            objUser.Matkhau = txtmatkhau.Text;
            Session.Add("User", objUser);
            string sqlInsertTaikhoan = "Insert into tblTaikhoan values(N'" + txtten.Text.Trim() + "', '" + Calendar1.SelectedDate.ToString("yyyy-MM-dd").Trim() + "', N'" + txtdiachi.Text.Trim() + "', '" + txtsodienthoai.Text.Trim() + "', '" + txtemail.Text.Trim() + "', '" + txtmatkhau.Text.Trim() + "', '0')";
            try
            {
                sqlDangky.InsertCommand = sqlInsertTaikhoan;
                sqlDangky.Insert();
                Response.Redirect("Thongtintaikhoan.aspx");
            }
            catch (Exception ex)
            {
                lblthongbao.Text = "Đăng ký không thành công " + ex.Message.ToString();
            }
        }

    }
    protected void txtmatkhau_TextChanged(object sender, EventArgs e)
    {

    }
}