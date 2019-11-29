using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Dangnhap : System.Web.UI.Page
{
    
    public string fullname;
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-DI6CE7U\SQLEXPRESS;Initial Catalog=BTLCSDLWEB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
            Session.Contents.Remove("users");
        }
    }
    public Boolean login = false;
    public void Connect(string us, string ps)
    {
        Quang_Khachhang user = new Quang_Khachhang();
        con.Open();
        string sqlQuery = "select MaTK, Hoten, Sodienthoai, email from tblTaikhoan where email='" + us + "' and Matkhau='" + ps + "' and Quyen='0'";
        SqlCommand cmd = new SqlCommand(sqlQuery, con);
        //cmd.Parameters.AddWithValue("email", us);
        //cmd.Parameters.AddWithValue("Matkhau", ps);
        try
        {
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                login = true;
                while (dr.Read())
                {
                    user.setMaKH(dr[0].ToString());
                    user.setTenKH(dr[1].ToString());
                    user.setSdt(dr[2].ToString());
                    user.setEmail(dr[3].ToString());
                }
                Session["users"] = user;
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
            Session.Contents.Remove("users");
        }
        Connect(txttendn.Text, txtmatkhau.Text);
        if (login == true)
        {

            if(Session["nextpage"] != null)
            {
                NextPage nextPage = (NextPage)Session["nextpage"];
                Response.Redirect(nextPage.getNextWeb());
            }
            Session.Add("userName", txttendn.Text);
            Session.Add("userPass", txtmatkhau.Text);
            Response.Redirect("Trangchu.aspx");
        }
        else
        {
            lblthongbao.Text = "Check your password and username again";
        }
    }
}