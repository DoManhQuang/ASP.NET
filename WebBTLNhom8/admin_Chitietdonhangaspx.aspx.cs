using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Chitietdonhangaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UpdateButton0_Click(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)FormView1.FindControl("DropDownList1");
        string tinhtrang = ddl.SelectedValue.ToString();
        Label lblmadh = (Label)FormView1.FindControl("MaDHLabel2");
        string madh = lblmadh.Text;
        SqlDataSource1.UpdateCommand = "UPDATE tblDonhang SET Tinhtrang = N'" + tinhtrang  +"' WHERE MaDH= '" + madh + "'";
        SqlDataSource1.Update();
    }
}