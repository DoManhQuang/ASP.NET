using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chitietthucpham : System.Web.UI.Page
{
    public static String MaTP;
    protected void Page_Load(object sender, EventArgs e)
    {
        List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
        if (lstThucpham != null)
        {
            foreach (var item in lstThucpham)
            {
                lblSession.Text += "" + item.getMaTP() + "  " + item.getSoluongmua().ToString() + "  " + item.getTenTP() + "  " + item.getGiatien() +
                    "<br/> <br/>";
            }
        }
    }
    protected void lnkbtnThemgiohang_Click(object sender, EventArgs e)
    {
        MaTP = Request.QueryString["MaTP"].Trim();
        Label lblTenTP = null;
        Label lblGiatien = null;
        if (fvThongtin.Row != null)
        {
            lblTenTP = (Label)fvThongtin.Row.FindControl("TenTPLabel");
            lblGiatien = (Label)fvThongtin.Row.FindControl("DongiaLabel");
            string TenTP = lblTenTP.Text;
            string giatien = lblGiatien.Text;
            int Soluongmua = int.Parse(ddlSoluongmua.SelectedValue.ToString());


            if (Soluongmua != 0)
            {
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
                        lstThucpham.Add(new InfoThucPham(MaTP, TenTP, giatien, Soluongmua));
                        Session["cart"] = lstThucpham;
                    }
                }
                else
                {
                    List<InfoThucPham> lstThucpham = new List<InfoThucPham>();
                    lstThucpham.Add(new InfoThucPham(MaTP, TenTP, giatien, Soluongmua));
                    Session["cart"] = lstThucpham;
                }
                Response.Redirect("Chitietthucpham.aspx?MaTP=" + MaTP);
            }
            else
            {
                lblSoluongmua.Visible = true;
            }
        }
    }
}