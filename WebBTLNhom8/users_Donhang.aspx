<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="users_Donhang.aspx.cs" Inherits="users_Donhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang thông tin đơn hàng</h3>
    <p>&nbsp;</p>
    <p style="text-align: center">
        <asp:GridView ID="gvThontindonhang" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaDH" DataSourceID="SqlDonhang" Width="100%">
            <Columns>
                <asp:BoundField DataField="MaDH" HeaderText="Mã đơn hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaDH" />
                <asp:BoundField DataField="Diachinhanhang" HeaderText="Địa chỉ nhận hàng" SortExpression="Diachinhanhang" />
                <asp:BoundField DataField="Yeucaukhac" HeaderText="Yêu cầu" SortExpression="Yeucaukhac" />
                <asp:BoundField DataField="Tongtien" HeaderText="Tổng tiền" SortExpression="Tongtien" />
                <asp:BoundField DataField="Tinhtrang" HeaderText="Tình trạng" SortExpression="Tinhtrang" />
                <asp:BoundField DataField="Ngaymua" HeaderText="Ngày mua" SortExpression="Ngaymua" />
                <asp:HyperLinkField DataNavigateUrlFields="MaDH" DataNavigateUrlFormatString="~/users_Chitietthongtindonhang.aspx?MaDH={0}" HeaderText="Thông tin" NavigateUrl="~/users_Chitietthongtindonhang.aspx" Text="Chi tiết" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDonhang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT [MaDH], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang] FROM [tblDonhang] WHERE ([MaTK] = @MaTK) ORDER BY [Ngaymua] DESC">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaTK" QueryStringField="MaTK" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

