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
        NextPage next = new NextPage("web_datmua.aspx");
        Session["nextpage"] = next;
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

        string web = "Giohang.aspx";
        NextPage nextPage = new NextPage(web);
        Session["nextpage"] = nextPage;
    }

    protected void btnXoagiohang_Click(object sender, EventArgs e)
    {
        if (Session["cart"] != null)
        {
            Session.Contents.Remove("cart");
            Response.Redirect("Giohang.aspx");
        }
    }

    protected void btnDatmua_Click(object sender, EventArgs e)
    {
        if (Session["cart"] != null)
        {
            if (Session["users"] != null)
            {
                Response.Redirect("web_datmua.aspx");
            }
            Response.Redirect("Dangnhap.aspx");
        }
        else
        {
            lblThongbao.Visible = true;
        }
    }

    protected void imgbtnTang_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton imgbtnTang = sender as ImageButton;
        int rowIndex = Convert.ToInt32(imgbtnTang.Attributes["RowIndex"]);
        //lblCapnhap.Text = "index up: " + rowIndex;
        Label gvlblSoluongmua = null;
        Label gvlblMaTP = null;
        if (gvGiohang.Rows != null)
        {
            List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
            ShoppingCart cart = new ShoppingCart(lstThucpham);
            gvlblMaTP = (Label)gvGiohang.Rows[rowIndex].FindControl("lblMaTP");
            gvlblSoluongmua = (Label)gvGiohang.Rows[rowIndex].FindControl("lblSoluongmua");
            if (int.Parse(gvlblSoluongmua.Text.Trim()) >= 0)
            {
                foreach (var item in cart.getDSThucPham())
                {
                    if (gvlblMaTP.Text.Trim().Equals(item.getMaTP()))
                    {
                        int soluongmuamoi = int.Parse(gvlblSoluongmua.Text.Trim()) + 1;
                        //gvGiohang.Rows[rowIndex] = soluongmuamoi
                        item.setSoluongmua(soluongmuamoi);
                    }
                }
            }
            Session["cart"] = cart.getDSThucPham();
            //lblCapnhap.Text = txtCapnhapSLM.Text;
            Response.Redirect("Giohang.aspx");
        }
    }

    protected void imgbtnGiam_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton imgbtnGiam = sender as ImageButton;
        int rowIndex = Convert.ToInt32(imgbtnGiam.Attributes["RowIndex"]);
        //lblCapnhap.Text = "index down: " + rowIndex;
        Label gvlblSoluongmua = null;
        Label gvlblMaTP = null;
        if (gvGiohang.Rows != null)
        {
            List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
            ShoppingCart cart = new ShoppingCart(lstThucpham);
            gvlblMaTP = (Label)gvGiohang.Rows[rowIndex].FindControl("lblMaTP");
            gvlblSoluongmua = (Label)gvGiohang.Rows[rowIndex].FindControl("lblSoluongmua");
            if (int.Parse(gvlblSoluongmua.Text.Trim()) != 0)
            {
                foreach (var item in cart.getDSThucPham())
                {
                    if (gvlblMaTP.Text.Trim().Equals(item.getMaTP()))
                    {
                        int soluongmuamoi = int.Parse(gvlblSoluongmua.Text.Trim()) - 1;
                        //gvGiohang.Rows[rowIndex] = soluongmuamoi
                        item.setSoluongmua(soluongmuamoi);
                    }
                }
            }
            Session["cart"] = cart.getDSThucPham();
            //lblCapnhap.Text = txtCapnhapSLM.Text;
            Response.Redirect("Giohang.aspx");
        }
    }

    protected void lnkbtnTenthucpham_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnTenthucpham = sender as LinkButton;
        int rowIndex = Convert.ToInt32(lnkbtnTenthucpham.Attributes["RowIndex"]);
        Label gvlblMaTP = null;
        if (gvGiohang.Rows != null)
        {
            gvlblMaTP = (Label)gvGiohang.Rows[rowIndex].FindControl("lblMaTP");
            Response.Redirect("Chitietthucpham.aspx?MaTP=" + gvlblMaTP.Text.Trim());
        }
    }

    protected void lnkbtnXoa_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnXoa = sender as LinkButton;
        int rowIndex = Convert.ToInt32(lnkbtnXoa.Attributes["RowIndex"]);
        //lblCapnhap.Text = "index down: " + rowIndex;
        Label gvlblSoluongmua = null;
        Label gvlblMaTP = null;
        if (gvGiohang.Rows != null)
        {
            List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
            ShoppingCart cart = new ShoppingCart(lstThucpham);
            gvlblMaTP = (Label)gvGiohang.Rows[rowIndex].FindControl("lblMaTP");
            gvlblSoluongmua = (Label)gvGiohang.Rows[rowIndex].FindControl("lblSoluongmua");
            if (int.Parse(gvlblSoluongmua.Text.Trim()) != 0)
            {
                foreach (var item in cart.getDSThucPham())
                {
                    if (gvlblMaTP.Text.Trim().Equals(item.getMaTP()))
                    {
                        int soluongmuamoi = 0;
                        //gvGiohang.Rows[rowIndex] = soluongmuamoi
                        item.setSoluongmua(soluongmuamoi);
                    }
                }
            }
            Session["cart"] = cart.getDSThucPham();
            //lblCapnhap.Text = txtCapnhapSLM.Text;
            Response.Redirect("Giohang.aspx");
        }
    }
}