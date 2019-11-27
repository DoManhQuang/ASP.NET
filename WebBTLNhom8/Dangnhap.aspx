<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang Đăng Nhập</h3>
    <table style="width: 100%">
        <tr>
            <td style="width: 135px">
                <asp:Label ID="Label1" runat="server" Text="Tài khoản"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttendn" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txttendn" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmatkhau" ErrorMessage="Không được để trống" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="Đăng nhập" 
                    Width="91px" style="margin-left:124px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Dangky.aspx" Text="Đăng ký" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
   
</asp:Content>

