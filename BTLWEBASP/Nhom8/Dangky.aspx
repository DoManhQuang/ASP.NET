<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang đăng ký</h3>
    <table style="width: 100%">
        <tr>
            <td style="width: 153px">
                <asp:Label ID="Label1" runat="server" Text="Thông tin"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Đăng ký" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Trangchu.aspx" Text="Trở về trang chủ" />
            </td>
        </tr>
    </table>
</asp:Content>

