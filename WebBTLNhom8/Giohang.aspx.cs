using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShoppingCart cart = null;
        if (Session["cart"] != null)
        {
            List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
            cart = new ShoppingCart(lstThucpham);
            ListDataTables listData = new ListDataTables();
            DataTable dataTable = listData.ShoppingCart(cart);
            gvGiohang.DataSource = dataTable;
            gvGiohang.DataBind();
            lblTongtien.Text = cart.getTongTien().ToString() + " VND";
        }
        else
        {
            lblTongtien.Text = "0.000 VND";
        }
        
        if (!Page.IsPostBack)
        {
            //DataTable dt = new DataTable();
            //dt.Columns.AddRange(new DataColumn[3] { new DataColumn("ItemId", typeof(int)),
            //        new DataColumn("ItemName", typeof(string)),
            //        new DataColumn("ItemQuantity",typeof(string)) });
            //dt.Rows.Add(1, "Flour", "500 Kg");
            //dt.Rows.Add(2, "Tea", "20 Kg");
            //dt.Rows.Add(3, "Rice", "1000 Kg");
            //gvGiohang.DataSource = dt;
            //gvGiohang.DataBind();
        }
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