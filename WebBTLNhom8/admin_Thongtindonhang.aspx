<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Thongtindonhang.aspx.cs" Inherits="Thongtindonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý đơn hàng</h2>
        </div>
    </header>
    <div style="text-align: center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaDH" DataSourceID="Sqlquanlydonhang" style="margin-left: 67px; margin-top: 43px" Width="90%">
        <Columns>
            <asp:BoundField DataField="MaDH" HeaderText="Mã đơn hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaDH" />
            <asp:BoundField DataField="MaTK" HeaderText="Mã tài khoản" SortExpression="MaTK" />
            <asp:BoundField DataField="Diachinhanhang" HeaderText="Địa chỉ nhận hàng" SortExpression="Diachinhanhang" />
            <asp:BoundField DataField="Yeucaukhac" HeaderText="Yêu cầu khác" SortExpression="Yeucaukhac" />
            <asp:BoundField DataField="Tongtien" HeaderText="Tổng tiền" SortExpression="Tongtien" />
            <asp:BoundField DataField="Ngaymua" HeaderText="Ngày mua" SortExpression="Ngaymua" />
            <asp:BoundField DataField="Tinhtrang" HeaderText="Tinh trạng" SortExpression="Tinhtrang" />
            <asp:HyperLinkField DataNavigateUrlFields="MaDH" DataNavigateUrlFormatString="admin_Chitietdonhangaspx.aspx?MaDH={0}" HeaderText="Thông tin" NavigateUrl="~/admin_Chitietdonhangaspx.aspx" Text="Xem" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="Sqlquanlydonhang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" DeleteCommand="DELETE FROM [tblDonhang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [tblDonhang] ([MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang]) VALUES (@MaTK, @Diachinhanhang, @Yeucaukhac, @Tongtien, @Ngaymua, @Tinhtrang)" SelectCommand="SELECT * FROM [tblDonhang]" UpdateCommand="UPDATE [tblDonhang] SET [MaTK] = @MaTK, [Diachinhanhang] = @Diachinhanhang, [Yeucaukhac] = @Yeucaukhac, [Tongtien] = @Tongtien, [Ngaymua] = @Ngaymua, [Tinhtrang] = @Tinhtrang WHERE [MaDH] = @MaDH">
        <DeleteParameters>
            <asp:Parameter Name="MaDH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaTK" Type="Int32" />
            <asp:Parameter Name="Diachinhanhang" Type="String" />
            <asp:Parameter Name="Yeucaukhac" Type="String" />
            <asp:Parameter Name="Tongtien" Type="String" />
            <asp:Parameter Name="Ngaymua" Type="DateTime" />
            <asp:Parameter Name="Tinhtrang" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaTK" Type="Int32" />
            <asp:Parameter Name="Diachinhanhang" Type="String" />
            <asp:Parameter Name="Yeucaukhac" Type="String" />
            <asp:Parameter Name="Tongtien" Type="String" />
            <asp:Parameter Name="Ngaymua" Type="DateTime" />
            <asp:Parameter Name="Tinhtrang" Type="String" />
            <asp:Parameter Name="MaDH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblloi" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    &nbsp;
</asp:Content>

