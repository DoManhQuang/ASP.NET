using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dangnhap : System.Web.UI.Page
{
    public string fullname;
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-DI6CE7U\SQLEXPRESS;Initial Catalog=BTLCSDLWEB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    { 
        Session.Contents.Remove("User");
    }

    private Boolean login = false;
    private void Connect(string us, string ps)
    {
        User n = new User();
        con.Open();
        string sqlQuery = "select count(*), Hoten from tblTaikhoan where Email=@Email and Matkhau=@Matkhau and Quyen=1 group by Hoten";
        SqlCommand cmd = new SqlCommand(sqlQuery, con);
        cmd.Parameters.AddWithValue("Email", us);
        cmd.Parameters.AddWithValue("Matkhau", ps);
        try
        {
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                login = true;
                int dem = 0;
                while (dr.Read())
                {
                    n.tendn = dr[1].ToString();
                    dem = int.Parse(dr[0].ToString());
                    fullname = dr[1].ToString();
                }
                if (dem == 1)
                {
                    Session["User"] = n;
                    login = true;
                }
                else
                {
                    login = false;
                }
            }
            else
            {
                login = false;
            }
            con.Close();
        }
        catch (Exception ex)
        {
            lblthongbao.Text = "Check your password and username again";
        }

    }

    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        Session.Contents.Remove("User");
        Connect(txttendn.Text, txtmatkhau.Text);
        if (login == true)
        {
            Response.Redirect("admin_Trangchu.aspx?fullname=" + fullname);
        }
        else
        {
            lblthongbao.Text = "Vui lòng kiểm tra lại tài khoản.";
        }
    }
}