using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_datmua : System.Web.UI.Page
{
    ShoppingCart cart = null;
    Quang_Khachhang khachhang = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
            List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
            cart = new ShoppingCart(lstThucpham);
            khachhang = (Quang_Khachhang)Session["users"];
            txtHoten.Text = khachhang.getTenKH();
            txtEmail.Text = khachhang.getEmail();
            txtSdt.Text = khachhang.getSdt();
            lblTongtien.Text = cart.getTongTien().ToString() + " VND";
        }
    }


    protected void btnDatmua_Click(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
            String DCnhanhang = txtDiachi.Text.Trim();
            String yeuCaukhac = ddlYeucau.SelectedItem.ToString();
            String tongtien = cart.getTongTien().ToString();
            String MaTK = khachhang.getMaKH();
            if (DCnhanhang == null)
            {
                lblDcerr.Visible = true;
            }
            else if (txtSdt.Text.Trim() == null)
            {
                lblSdterr.Visible = true;
            }
            else if (txtHoten.Text.Trim() == null)
            {
                lblTenKHerr.Visible = true;
            }
            else if (txtEmail.Text == null)
            {
                lblemailerr.Visible = true;
            }
            else 
            {
                sqlDatmua.InsertCommand = "insert into tblDonhang (MaTK, Diachinhanhang, Yeucaukhac, Tongtien) values " +
                 "('" + MaTK + "', N'" + DCnhanhang + "', N'" + yeuCaukhac + "', '" + tongtien + "')";
                sqlDatmua.Insert();
                Response.Redirect("Muathanhcong.aspx");
            }
        }
    }
}