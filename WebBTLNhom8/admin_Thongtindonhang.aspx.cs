using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thongtindonhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void EditButton_Click(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int ddl = Convert.ToInt32(((DropDownList)GridView1.FindControl("ddltinhtrang")).SelectedValue);
        if (ddl == 0)
        {
            GridView1.Rows[e.RowIndex].Cells[6].Text = "Chờ xác nhận đơn hàng";
        }
        else if (ddl == 1)
        {
            GridView1.Rows[e.RowIndex].Cells[6].Text = "Đang đi lấy hàng về kho";
        }
        else if (ddl == 2)
        {
            GridView1.Rows[e.RowIndex].Cells[6].Text = "Đang vận chuyển";
        }
        else if (ddl == 3)
        {
            GridView1.Rows[e.RowIndex].Cells[6].Text = "Đã vận chuyển đến kho";
        }
        else if (ddl == 4)
        {
            GridView1.Rows[e.RowIndex].Cells[6].Text = "Sẵn hàng giao hàng";
        }
        else
        {
            GridView1.Rows[e.RowIndex].Cells[6].Text = "Giao hàng thành công";
        }
    }

    protected void GridView1_RowUpdated1(object sender, GridViewUpdatedEventArgs e)
    {
        
    }
}