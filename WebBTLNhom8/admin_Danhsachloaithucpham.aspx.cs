using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Danhsachloaithucpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblloi.Text = "có một lỗi xảy ra khi xóa dữ liệu.<br/>" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblloi.Text = "một người dùng khác đang đăng nhập để cập nhật dữ liệu.";
        }
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblloi.Text = "có một lỗi xảy ra khi sửa dữ liệu.<br/>" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblloi.Text = "một người dùng khác đang đăng nhập để cập nhật dữ liệu.";
        }
    }
}