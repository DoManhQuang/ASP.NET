<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="web_datmua.aspx.cs" Inherits="web_datmua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Thông tin khách hàng</h3>
    <p>&nbsp;</p>
    <table style="width: 100%;">
        <tr>
            <td>
                <br />
                Họ và tên :</td>
            <td>
                <asp:TextBox ID="txtHoten" runat="server" Height="29px" Width="237px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Địa chỉ :</td>
            <td>
                <asp:TextBox ID="txtDiachi" runat="server" Height="120px" TextMode="MultiLine" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Số điện thoại :</td>
            <td>
                <asp:TextBox ID="txtSdt" runat="server" Height="32px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Email :</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="29px" Width="240px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

