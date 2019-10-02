<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Danhsachthucphamtheoloai.aspx.cs" Inherits="Danhsachthucphamtheoloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Danh sách thực phẩm theo loại</h3>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/youmart.com.vn - Siêu thị thực phẩm trực tuyến hàng đầu Việt nam_files/961_1336_120.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Giá tiền/đơn vị tính"></asp:Label>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Chitietthucpham.aspx">Xem thông tin</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>

