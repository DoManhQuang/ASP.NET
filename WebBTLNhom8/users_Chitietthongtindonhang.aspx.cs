using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users_Chitietthongtindonhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lnkbtnTenthucpham_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnTenthucpham = sender as LinkButton;
        int rowIndex = Convert.ToInt32(lnkbtnTenthucpham.Attributes["RowIndex"]);
        Label gvlblMaTP = null;
        if (gvDSThucpham.Rows != null)
        {
            gvlblMaTP = (Label)gvDSThucpham.Rows[rowIndex].FindControl("lblMaTP");
            Response.Redirect("Chitietthucpham.aspx?MaTP=" + gvlblMaTP.Text.Trim());
        }
    }
}