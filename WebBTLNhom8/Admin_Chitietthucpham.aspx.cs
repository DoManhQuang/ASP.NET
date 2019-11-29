using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_Chitietthucpham : System.Web.UI.Page
{
    public string fileanh;

    protected void Page_Load(object sender, EventArgs e)
    {
        fileanh = (string)Session["imgName"];
    }




    protected void Button1_Click2(object sender, EventArgs e)
    {
        FileUpload fl = (FileUpload)FormView1.FindControl("uploadanh");
        Image img = (Image)FormView1.FindControl("Image1");
        if (fl.HasFile)
        {
            if (fl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fl.FileName);
                    Session["imgName"] = filename;
                    fl.SaveAs(Server.MapPath("~/") + filename);
                    img.ImageUrl = "~/images/" + filename;
                    //LabelPath.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    //LabelPath.Text = "Upload status: The file could not be uploaded. The following error occured: ";
                }
            }
        }
    }

    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)FormView1.FindControl("DropDownList1");
        TextBox txtten = (TextBox)FormView1.FindControl("TenTPTextBox");
        TextBox txtgia = (TextBox)FormView1.FindControl("DongiaTextBox");
        TextBox txtslc = (TextBox)FormView1.FindControl("SoluongcoTextBox");
        TextBox txtmota = (TextBox)FormView1.FindControl("MotaTextBox");
        Image imgName = (Image)FormView1.FindControl("Image1");
        Label lblmatp = (Label)FormView1.FindControl("MaTPLabel1");
        SqlDataSource sqlUpdate = (SqlDataSource)FormView1.FindControl("sqlUpdateTP");
        string urlAnh = fileanh;
       
        string ten = txtten.Text.Trim();
        string gia = txtgia.Text.Trim();
        string slc = txtslc.Text.Trim();
        string mota = txtmota.Text.Trim();
        string maloai = ddl.SelectedValue;
        string matp = lblmatp.Text;
        if (fileanh == null)
        {
            sqlUpdate.UpdateCommand = "UPDATE tblThucpham SET TenTP = N'" + ten + "', Dongia = '" + gia + "', Mota = N'" + mota + "', Soluongco = '" + slc + "' WHERE MaTP = '" + matp + "'";
            sqlUpdate.Update();
            Response.Redirect("Admin_Chitietthucpham.aspx?MaTP=" + matp);
        }
        else
        {
            sqlUpdate.UpdateCommand = "UPDATE tblThucpham SET TenTP = N'" + ten + "', Dongia = '" + gia + "', Mota = N'" + mota + "', Soluongco = '" + slc + "', urlAnh = '" + urlAnh + "' WHERE MaTP = '" + matp + "'";
            sqlUpdate.Update();
            Response.Redirect("Admin_Chitietthucpham.aspx?MaTP=" + matp);
        }
    }

    protected void UpdateCancelButton_Click(object sender, EventArgs e)
    {
        Page_Load(sender, e);
        Label lblmatp = (Label)FormView1.FindControl("MaTPLabel1");
        string matp = lblmatp.Text;
        Response.Redirect("Admin_Chitietthucpham.aspx?MaTP=" + matp);
    }
}