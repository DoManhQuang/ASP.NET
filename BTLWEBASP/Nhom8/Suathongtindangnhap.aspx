<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Suathongtindangnhap.aspx.cs" Inherits="Suathongtindangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Sửa thông tin đăng nhập</h3>
    <table style="width: 100%">
        <tr>
            <td style="width: 177px">
                <asp:Label ID="Label1" runat="server" Text="Thông tin đăng nhập"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 177px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Cập nhập" />
            </td>
        </tr>
    </table>
</asp:Content>

