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
        }
        if (Session["users"] == null)
        {
            Quang_Khachhang khachhangtest = new Quang_Khachhang("1", "Quang", "123456", "quangdm@ghtk.vn");
            Session["users"] = khachhangtest;
            lnkbtnDonhang.Visible = true;
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
}
