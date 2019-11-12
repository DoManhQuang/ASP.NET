using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //InfoThucPham cartTP;
        //if(Session["cart"] != null)
        //{
        //    cartTP = (InfoThucPham)Session["cart"];
        //}
        //if(!IsPostBack)
        //{
        //    DataBind(cartTP);
        //}
    }

    protected void btnXoagiohang_Click(object sender, EventArgs e)
    {
        if (Session["cart"] != null)
        {
            Session.Contents.Remove("cart");
            Response.Redirect("Giohang.aspx");
        }
    }
}