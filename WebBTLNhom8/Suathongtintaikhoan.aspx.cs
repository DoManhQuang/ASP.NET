using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Suathongtintaikhoan : System.Web.UI.Page
{
   
   
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }

    
    protected void Button5_Click(object sender, EventArgs e)
    {


    }
   
    protected void SodienthoaiTextBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        try
        {
            lblthongbao.Text = "Sửa thành công  ";
        }
        catch (Exception ex)
        {
            if (e.Exception != null)
            {
                lblthongbao.Text = "Có một lỗi xảy ra khi xóa " + "Message:" + ex.Message;

            }
            else if (e.AffectedRows == 0)
            {
                lblthongbao.Text = "Có 1 người truy cập ";
            }
        }
    }

    protected void EditButton_Click(object sender, EventArgs e)
    {

    }
}