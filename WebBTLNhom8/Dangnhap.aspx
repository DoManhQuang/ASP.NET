<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang Đăng Nhập</h3>
    <table style="width: 100%">
        <tr>
            <td style="width: 156px">
                <asp:Label ID="Label1" runat="server" Text="Tài khoản"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Suathongtindangnhap.aspx" Text="Đăng nhập" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Dangky.aspx" Text="Đăng ký" />
            </td>
        </tr>
    </table>
</asp:Content>

