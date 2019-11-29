using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Themloaithucpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["TenLoai"].DefaultValue = txtTenloai.Text;
        try
        {
            SqlDataSource1.Insert();
            txtTenloai.Text = "";
            Response.Redirect("admin_Danhsachloaithucpham.aspx");
        }
        catch(Exception ex)
        {
            lblloi.Text = "Có 1 lỗi xảy ra khi thêm.</br>" + "Message: " + ex.Message;
        }
    }
}