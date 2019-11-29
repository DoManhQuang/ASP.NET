using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thongtintaikhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 objUser = new Class1();
        if (Session["User"] != null)
        {
            objUser = (Class1)Session["User"];
            txtemail.Text = objUser.email;
            txtdiachi.Text = objUser.Diachi;
            txtNgaysinh.Text = objUser.Ngaysinh;
            txtten.Text = objUser.Hoten;
            txtsodienthoai.Text = objUser.Sodienthoai;
          
            if (Session["User"] != null)
            {
                Session.Contents.Remove("User");
            }

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 objUser = new Class1();
        objUser.Hoten = txtten.Text;
        objUser.Ngaysinh = txtNgaysinh.Text;
        objUser.Sodienthoai = txtsodienthoai.Text;
        objUser.Diachi = txtdiachi.Text;
        objUser.email = txtemail.Text;
        //objUser.Matkhau = txtmatkhau.Text;
        Session.Add("User", objUser);
        Response.Redirect("Suathongtintaikhoan.aspx");
    }
}