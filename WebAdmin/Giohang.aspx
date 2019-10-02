<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang Giỏ Hàng</h3>
    <table style="width: 100%">
        <tr>
            <td style="width: 128px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/youmart.com.vn - Siêu thị thực phẩm trực tuyến hàng đầu Việt nam_files/961_1336_120.jpg" />
            </td>
            <td style="width: 99px">
                <asp:Label ID="Label1" runat="server" Text="Tên thực phẩm"></asp:Label>
            </td>
            <td style="width: 102px">
                <asp:Label ID="Label2" runat="server" Text="Giá thành"></asp:Label>
            </td>
            <td style="width: 147px">
                <asp:Label ID="Label3" runat="server" Text="Số lượng"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Tổng"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Xóa" />
            </td>
        </tr>
        <tr>
            <td style="width: 128px">
                <asp:Label ID="Label5" runat="server" Text="Thành tiền"></asp:Label>
            </td>
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 102px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Tổng Tiền"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td style="width: 99px">&nbsp;</td>
            <td style="width: 102px">
                <asp:Button ID="Button2" runat="server" Text="Thanh toán" />
            </td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

