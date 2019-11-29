using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Themthucpham : System.Web.UI.Page
{
    public string imgName;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["imgName"] != null)
        {
            imgName = (string)Session["imgName"];
        }
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
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
        else if (imgName == null)
        {
            LabelPath.Text = "Hãy chọn file ảnh.";
        }
        else
        {
            try
            {
                sqlThemTP.InsertParameters["Maloai"].DefaultValue = DropDownList1.SelectedValue;
                sqlThemTP.InsertParameters["TenTP"].DefaultValue = txtten.Text.Trim();
                sqlThemTP.InsertParameters["Dongia"].DefaultValue = txtgia.Text.Trim();
                sqlThemTP.InsertParameters["Soluongco"].DefaultValue = txtslc.Text.Trim();
                sqlThemTP.InsertParameters["Mota"].DefaultValue = txtmota.Text.Trim();
                sqlThemTP.InsertParameters["urlAnh"].DefaultValue = imgName;
                sqlThemTP.Insert();
                Response.Redirect("admin_Danhsachthucpham.aspx");
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

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUploadImage.HasFile)
        {
            if (FileUploadImage.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadImage.FileName);
                    Session["imgName"] = filename;
                    FileUploadImage.SaveAs(Server.MapPath("~/") + filename);
                    ImageUpload.ImageUrl = "~/images/" + filename;
                    LabelPath.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    LabelPath.Text = "Upload status: The file could not be uploaded. The following error occured: ";
                }
            }
        }
    }
}