<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Sualoaithucpham.aspx.cs" Inherits="Sualoaithucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý loại thực phẩm</h2>

        </div>
    </header>
    <asp:TextBox ID="txt1123" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn1" runat="server" Text="nhap" OnClick="btn_Click" />
            <br />
            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    Sửa Loại Thực Phẩm
</asp:Content>

