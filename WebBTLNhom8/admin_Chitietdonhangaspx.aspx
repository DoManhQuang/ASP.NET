<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Chitietdonhangaspx.aspx.cs" Inherits="admin_Chitietdonhangaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý đơn hàng</h2>
        </div>
    </header>
    <br />
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thông tin</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaDH" DataSourceID="SqlDataSource1" Height="50px" Style="margin-left: 339px; margin-top: 39px" Width="532px">
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <Fields>
            <asp:BoundField DataField="MaDH" HeaderText="Mã đơn hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaDH" />
            <asp:BoundField DataField="MaTK" HeaderText="Mã tài khoản" SortExpression="MaTK" />
            <asp:BoundField DataField="Diachinhanhang" HeaderText="Địa chỉ nhận hàng" SortExpression="Diachinhanhang" />
            <asp:BoundField DataField="Yeucaukhac" HeaderText="Yêu cầu khác" SortExpression="Yeucaukhac" />
            <asp:BoundField DataField="Tongtien" HeaderText="Tổng tiền" SortExpression="Tongtien" />
            <asp:BoundField DataField="Tinhtrang" HeaderText="Tình trạng" SortExpression="Tinhtrang" />
            <asp:BoundField DataField="Ngaymua" HeaderText="Ngày mua" SortExpression="Ngaymua" />
        </Fields>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT * FROM [tblDonhang] WHERE ([MaDH] = @MaDH)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi tiết đơn hàng</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaCTDH,MaTP,MaDH" DataSourceID="SqlDataSource2" Style="margin-left: 338px" Width="684px">
        <Columns>
            <asp:BoundField DataField="MaCTDH" HeaderText="Mã chi tiết đơn hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaCTDH" />
            <asp:BoundField DataField="MaTP" HeaderText="Mã thực phẩm" ReadOnly="True" SortExpression="MaTP" />
            <asp:BoundField DataField="MaDH" HeaderText="Mã đơn hàng" ReadOnly="True" SortExpression="MaDH" />
            <asp:BoundField DataField="Soluongmua" HeaderText="Số lượng mua" SortExpression="Soluongmua" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT * FROM [tblChitietDH] WHERE ([MaDH] = @MaDH)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />

</asp:Content>

