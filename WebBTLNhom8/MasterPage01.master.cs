using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage01 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblSoluongmua.Text = "";
        List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
        if (Session["cart"] != null)
        {
            lblSoluongmua.Text = lstThucpham.Count.ToString();
        }
        else {
            lblSoluongmua.Text = "0";
        }
    }
}
