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
        string web = "Chitietthucpham.aspx";
        string matp = Request.QueryString["MaTP"];
        web = web + "?MaTP=" + matp;
        NextPage nextPage = new NextPage(web);
        Session["nextpage"] = nextPage;
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
            //String[] spearator = { ",", " VND" };

            //// using the method 
            //String[] strlist = giatien.Split(spearator,
            //   StringSplitOptions.RemoveEmptyEntries);

            //giatien = strlist[0] + strlist[1];
            if(txtSoluongmua.Text.Trim() == "")
            {
                txtSoluongmua.Text = "0";
            }
            int Soluongmua = int.Parse(txtSoluongmua.Text.Trim());

            // lấy dữ liệu Hàng
            sqlGetDataTP.SelectCommand = "SELECT TenTP, Dongia, urlAnh " +
                "FROM tblThucpham " +
                "WHERE MaTP = '" + MaTP + "' ";
            DataView dv = (DataView)sqlGetDataTP.Select(DataSourceSelectArguments.Empty);
            //String getTenTP = dv.Table.Rows[0]["TenTP"].ToString().Trim();
            //String getDongia = dv.Table.Rows[0]["Dongia"].ToString().Trim();
            String geturlAnh = dv.Table.Rows[0]["urlAnh"].ToString().Trim();
            geturlAnh = "./images/" + geturlAnh;
                
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
                        lstThucpham.Add(new InfoThucPham(MaTP, TenTP, giatien, Soluongmua, geturlAnh));
                        Session["cart"] = lstThucpham;
                    }
                }
                else
                {
                    List<InfoThucPham> lstThucpham = new List<InfoThucPham>();
                    lstThucpham.Add(new InfoThucPham(MaTP, TenTP, giatien, Soluongmua, geturlAnh));
                    Session["cart"] = lstThucpham;
                }
                Response.Redirect("Chitietthucpham.aspx?MaTP=" + MaTP);
            }
            else
            {
                lblSoluongmua.Visible = true;
                txtSoluongmua.Text = "0";
            }
        }
    }
}