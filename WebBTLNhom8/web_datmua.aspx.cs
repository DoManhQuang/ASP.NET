using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_datmua : System.Web.UI.Page
{
    ShoppingCart cart = null;
    Quang_Khachhang khachhang = null;
    List<InfoThucPham> lstThucpham = null;
    Quang_Khachhang khachhangtest = new Quang_Khachhang("1", "Quang", "123456", "quangdm@ghtk.vn");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["users"] = khachhangtest;

        if (Session["users"] != null)
        {
            khachhang = (Quang_Khachhang)Session["users"];
            txtHoten.Text = khachhang.getTenKH();
            txtEmail.Text = khachhang.getEmail();
            txtSdt.Text = khachhang.getSdt();
        }
        if(Session["cart"] != null)
        {
            lstThucpham = (List<InfoThucPham>)Session["cart"];
            cart = new ShoppingCart(lstThucpham);
            lblTongtien.Text = cart.getTongTien().ToString() + " VND";
        }
        else
        {
            lblTongtien.Text = "00.000 VND";
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

                sqLayMaDH.SelectCommand = "SELECT TOP 1 MaDH " +
                    "FROM tblDonhang " +
                    "WHERE MaTK = '" + MaTK + "' " +
                    "ORDER BY Ngaymua DESC";

                DataView dv = (DataView)sqLayMaDH.Select(DataSourceSelectArguments.Empty);
                String MaDH = dv.Table.Rows[0]["MaDH"].ToString().Trim();

                
                foreach (var item in lstThucpham)
                {
                    // insert tblCTDH
                    string sqlInsert = "INSERT INTO tblChitietDH values ('" + item.getMaTP()+"', '"+MaDH+"', '"+item.getSoluongmua()+"')";
                    sqlChitietDH.InsertCommand = sqlInsert;
                    sqlChitietDH.Insert();

                    // Update số lượng sản phẩm 
                    string sqlUpdate = "UPDATE tblThucpham SET Soluongco = Soluongco - '" + item.getSoluongmua() + "' WHERE MaTP = '" + item.getMaTP() + "'";
                    sqlUpdatesoluongmua.UpdateCommand = sqlUpdate;
                    sqlUpdatesoluongmua.Update();
                }
                if (Session["cart"] != null)
                {
                    Session.Contents.Remove("cart");
                }
                Response.Redirect("Muathanhcong.aspx");
            }
        }
    }
}