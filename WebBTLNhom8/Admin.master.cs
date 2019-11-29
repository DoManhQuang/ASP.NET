using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            User user = (User)Session["User"];
            lblAdminname.Text = user.tendn;
        }
    }

    protected void lnkbtnDangxuat_Click(object sender, EventArgs e)
    {
        if(Session["User"] != null)
        {
            Session.Contents.Remove("User");
            Response.Redirect("Admin_Dangnhap.aspx");
        }
    }
}
