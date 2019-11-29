<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Themthucpham.aspx.cs" Inherits="Themthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý thực phẩm</h2>
        </div>
    </header>
    Thêm thực phẩm<br />
    <table style="width: 100%" font="TimeNewRoman;">
        <tr>
            <td style="width: 148px">Mã loại</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Maloai" DataValueField="Maloai">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT [Maloai] FROM [tblLoaiTP]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Tên thực phẩm</td>
            <td>
                <asp:TextBox ID="txtten" runat="server" Width="242px"></asp:TextBox>
                <asp:Label ID="lblten" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Số lượng</td>
            <td>
                <asp:TextBox ID="txtslc" runat="server" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Đơn giá</td>
            <td>
                <asp:TextBox ID="txtgia" runat="server" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Mô tả</td>
            <td>
                <asp:TextBox ID="txtmota" runat="server" Height="222px" TextMode="MultiLine" Width="821px"></asp:TextBox>
                <asp:Label ID="lblmota" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Hình ảnh</td>
            <td>
                <asp:FileUpload ID="HinhAnh" runat="server" />
                <asp:Label ID="lblhinhanh" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Button ID="btnThem" runat="server" Style="margin-left: 203px" Text="Thêm" OnClick="btnThem_Click" />
            </td>
            <td>
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Hủy bỏ" />
                <asp:Label ID="lblthongbao" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    &nbsp;
</asp:Content>

