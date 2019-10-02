<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Chitietthucpham.aspx.cs" Inherits="Chitietthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang chi tiết thực phẩm</h3>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/youmart.com.vn - Siêu thị thực phẩm trực tuyến hàng đầu Việt nam_files/961_1336_120.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Thông tin Thực Phẩm"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Thêm Giỏ Hàng</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Giohang.aspx">Giỏ Hàng</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>

