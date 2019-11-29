using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Themthucpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        int sizeLimit = 5242880;
        if (HinhAnh.HasFile)
        {
            if (HinhAnh.PostedFile.ContentLength <= sizeLimit)
            {
                string path = "E:\\BTL_ASPWEB\\WebBTLNhom8\\images\\" + HinhAnh.FileName;
                HinhAnh.SaveAs(path);

            }
        }

        SqlDataSource1.InsertParameters["TenTP"].DefaultValue = txtten.Text;
        SqlDataSource1.InsertParameters["Dongia"].DefaultValue = txtgia.Text;
        SqlDataSource1.InsertParameters["Soluongco"].DefaultValue = txtslc.Text;
        SqlDataSource1.InsertParameters["Mota"].DefaultValue = txtmota.Text;
        SqlDataSource1.InsertParameters["urlAnh"].DefaultValue = HinhAnh.FileName;
        SqlDataSource1.InsertParameters["Maloai"].DefaultValue = DropDownList1.SelectedValue;
        if (txtten.Text == "")
        {
            lblten.Text = "Không được bỏ trống .";
        }
        else if (txtmota.Text == "")
        {
            lblmota.Text = "Không được bỏ trống .";
        }

        else if (Convert.ToInt32(txtgia.Text) <= 0 || Convert.ToInt32(txtslc.Text) < 0)
        {
            lblthongbao.Text = "Số lượng xe  phải lớn hơn hoặc bằng không và đơn giá lớn hơn không ";
        }
        else if (HinhAnh.FileName == "")
        {
            lblhinhanh.Text = "Hãy chọn file ảnh.";
        }
        else
        {
            try
            {
                SqlDataSource1.Insert();
                txtten.Text = "";
                txtslc.Text = "";
                txtmota.Text = "";

                txtgia.Text = "";
                //txtmahang.Text = "";
                Response.Redirect("Danhsachthucpham.aspx");
            }
            catch (Exception ex)
            {
                lblthongbao.Text = "Có 1 lỗi xảy ra khi thêm.<br/>" + "Message: " + ex.Message;
            }
        }
    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_Themthucpham.aspx");
    }
}