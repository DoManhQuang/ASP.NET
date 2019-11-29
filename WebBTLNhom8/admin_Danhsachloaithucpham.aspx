<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Danhsachloaithucpham.aspx.cs" Inherits="Danhsachloaithucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <header class="page-header" style="left: 0px; top: 1px">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý loại thực phẩm</h2>

            <br />

        </div>
    </header>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Maloai" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" Style="margin-left: 343px; margin-top: 88px" Width="604px" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
            <asp:BoundField DataField="Maloai" HeaderText="Mã loại" InsertVisible="False" ReadOnly="True" SortExpression="Maloai" />
            <asp:BoundField DataField="TenLoai" HeaderText="Tên loại" SortExpression="TenLoai" />
            <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm mới" NewText="Tạo mới" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>" DeleteCommand="DELETE FROM [tblLoaiTP] WHERE [Maloai] = @Maloai" InsertCommand="INSERT INTO [tblLoaiTP] ([TenLoai]) VALUES (@TenLoai)" SelectCommand="SELECT * FROM [tblLoaiTP]" UpdateCommand="UPDATE [tblLoaiTP] SET [TenLoai] = @TenLoai WHERE [Maloai] = @Maloai">
        <DeleteParameters>
            <asp:Parameter Name="Maloai" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="Maloai" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblloi" runat="server"></asp:Label>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/admin_Themloaithucpham.aspx" Style="margin-left: 80px">Thêm một bản ghi</asp:LinkButton>
    <br />
</asp:Content>

