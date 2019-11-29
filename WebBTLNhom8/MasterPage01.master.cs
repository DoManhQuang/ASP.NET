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
        lnkbtnDonhang.Visible = false;
        lblSoluongmua.Text = "";
        List<InfoThucPham> lstThucpham = (List<InfoThucPham>)Session["cart"];
        if (Session["cart"] != null)
        {
            lblSoluongmua.Text = lstThucpham.Count.ToString();
        }
        else {
            lblSoluongmua.Text = "0";
        }


        // test
        if(Session["users"] != null)
        {
            lnkbtnDonhang.Visible = true;
            Quang_Khachhang user = (Quang_Khachhang)Session["users"];
            lnkbtnTaikhoan.Text = user.getTenKH();
            lnkbtnTaikhoan.Visible = true;
            lnkbtnDangnhap.Visible = false;
            lnkbtnDangky.Visible = false;
            lnkbtnDangnhap.Enabled = false;
            lnkbtnDangky.Enabled = false;
            lnkbtnLogout.Enabled = true;
            lnkbtnLogout.Text = "Đăng xuất";
        }
        if (Session["users"] == null)
        {
            //Quang_Khachhang khachhangtest = new Quang_Khachhang("1", "Quang", "123456", "quangdm@ghtk.vn");
            //Session["users"] = khachhangtest;
            //lnkbtnDonhang.Visible = true;
            lnkbtnDangnhap.Enabled = true;
            lnkbtnDangky.Enabled = true;
            lnkbtnTaikhoan.Visible = false;
            lnkbtnDangnhap.Visible = true;
            lnkbtnDangky.Visible = true;
            lnkbtnLogout.Enabled = false;
            lnkbtnLogout.Text = "|";
        }
    }

    protected void lnkbtnDonhang_Click(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
            Quang_Khachhang khachhang = (Quang_Khachhang)Session["users"];
            Response.Redirect("users_Donhang.aspx?MaTK=" + khachhang.getMaKH());
        }
    }

    protected void lnkbtnLogout_Click(object sender, EventArgs e)
    {
        if (Session["users"] != null)
        {
            Session.Contents.Remove("users");
            //Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
            //Response.Expires = -1500;
            //Response.CacheControl = "no-cache";
            Response.Redirect("Trangchu.aspx");
        }
    }

    protected void lnkbtnTaikhoan_Click(object sender, EventArgs e)
    {

    }

    protected void lnkbtnDangnhap_Click(object sender, EventArgs e)
    {

    }
}
