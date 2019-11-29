<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Themloaithucpham.aspx.cs" Inherits="Themloaithucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý loại thực phẩm</h2>
        </div>
    </header>

    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 237px">Tên loại thực phẩm</td>
            <td style="width: 361px">
                <asp:TextBox ID="txtTenloai" runat="server" Width="287px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenloai" ErrorMessage="không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="margin-left: 121px" Text="Tạo mới" Width="135px" />
    <br />
    <asp:Label ID="lblloi" runat="server"></asp:Label>
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
    <br />
    <br />
</asp:Content>

