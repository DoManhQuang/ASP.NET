<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Danhsachthucpham.aspx.cs" Inherits="Danhsachthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý thực phẩm</h2>
            <p class="no-margin-bottom">&nbsp;</p>
        </div>
    </header>
    <div style="text-align: center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaTP" DataSourceID="SqlDataSource1" PageSize="5" Height="186px" style="margin-left: 132px" Width="1090px">
        <Columns>
            <asp:BoundField DataField="Maloai" HeaderText="Mã Loại" SortExpression="Maloai" />
            <asp:BoundField DataField="TenTP" HeaderText="Tên Thực Phẩm" SortExpression="TenTP" />
            <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" SortExpression="Dongia" />
            <asp:BoundField DataField="Soluongco" HeaderText="Số lượng có" SortExpression="Soluongco" />
            <asp:ImageField DataImageUrlField="urlAnh" DataImageUrlFormatString="~/images/{0}" HeaderText="Ảnh">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="MaTP" DataNavigateUrlFormatString="~/Admin_Chitietthucpham.aspx?MaTP={0}" HeaderText="Chi tiết" NavigateUrl="~/Admin_Chitietthucpham.aspx" Text="Chi tiết" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" DeleteCommand="DELETE FROM [tblThucpham] WHERE [MaTP] = @MaTP" InsertCommand="INSERT INTO [tblThucpham] ([Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (@Maloai, @TenTP, @Dongia, @Soluongco, @Mota, @urlAnh)" SelectCommand="SELECT * FROM [tblThucpham]" UpdateCommand="UPDATE [tblThucpham] SET [Maloai] = @Maloai, [TenTP] = @TenTP, [Dongia] = @Dongia, [Soluongco] = @Soluongco, [Mota] = @Mota, [urlAnh] = @urlAnh WHERE [MaTP] = @MaTP">
        <DeleteParameters>
            <asp:Parameter Name="MaTP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Maloai" Type="Int32" />
            <asp:Parameter Name="TenTP" Type="String" />
            <asp:Parameter Name="Dongia" Type="String" />
            <asp:Parameter Name="Soluongco" Type="Int32" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="urlAnh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Maloai" Type="Int32" />
            <asp:Parameter Name="TenTP" Type="String" />
            <asp:Parameter Name="Dongia" Type="String" />
            <asp:Parameter Name="Soluongco" Type="Int32" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="urlAnh" Type="String" />
            <asp:Parameter Name="MaTP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

