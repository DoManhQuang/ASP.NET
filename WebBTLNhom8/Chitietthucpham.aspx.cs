using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chitietthucpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkbtnThemgiohang_Click(object sender, EventArgs e)
    {
        String MaTP = "1";
        int Soluongmua = 1;
        if (Session["cart"] != null)
        {
            List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
            Boolean flag = false;
            foreach (var item in lstThucpham)
            {
                if (item.getMaTP().Equals(MaTP))
                {
                    item.setSoluongmuathem(Soluongmua);
                    flag = true;
                }
            }
            if (!flag)
            {
                lstThucpham.Add(new InfoThucPham(MaTP, Soluongmua));
                Session["cart"] = lstThucpham;
            }
        }
        else
        {
            List<InfoThucPham> lstThucpham = new List<InfoThucPham>();
            lstThucpham.Add(new InfoThucPham(MaTP, Soluongmua));
            Session["cart"] = lstThucpham;
        }
        Response.Redirect("Chitietthucpham.aspx");
    }
    protected void lnkbtnClearCart_Click(object sender, EventArgs e)
    {
        Session.Contents.Remove("cart");
        Response.Redirect("Chitietthucpham.aspx");
    }
}