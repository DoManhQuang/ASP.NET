<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Thongtintaikhoan.aspx.cs" Inherits="Thongtintaikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <table style="width: 100%">
    <tr>
    <td style="height: 23px;" colspan="3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <h1><b> Thông tin đăng ký</b></h1> 
        <br />
&nbsp;<h4> <b  > Thông tin đăng nhập</b></h4></td>
    </tr>
        <tr>
            <td style="width: 164px; height: 29px;">
             
                <asp:Label ID="lblEmail" runat="server" Text="Email&nbsp;"></asp:Label>
            </td>
            <td style="height: 29px; width: 137px;">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <br />
                </td>
            <td style="height: 29px">
            &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px;" colspan="3">
                <h4><b>Thông tin cá nhân</b></h4> </td>
            </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                <asp:Label ID="lblten" runat="server" Text="Họ và tên "></asp:Label>
            </td>
            <td style="height: 22px; width: 137px;">
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                <asp:Label ID="lblNgaysinh" runat="server" Text="Ngày sinh"></asp:Label>
            </td>
            <td style="height: 22px; width: 137px;">
                <asp:TextBox ID="txtNgaysinh" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                <asp:Label ID="lblSodienthoai" runat="server" Text="Số điện thoại "></asp:Label>
            </td>
            <td style="height: 22px; width: 137px;">
                <asp:TextBox ID="txtsodienthoai" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                <asp:Label ID="lbldiachi" runat="server" Text="Địa chỉ "></asp:Label>
            </td>
            <td style="height: 22px; width: 137px;">
                <asp:TextBox ID="txtdiachi" runat="server" Height="102px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 32px;">
                &nbsp;</td>
            <td style="height: 32px; width: 137px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            </td>
            <td style="height: 32px; width: 137px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>
</asp:Content>

