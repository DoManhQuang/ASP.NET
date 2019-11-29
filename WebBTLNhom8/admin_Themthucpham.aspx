<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Themthucpham.aspx.cs" Inherits="Themthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý thực phẩm</h2>
        </div>
    </header>
    Thêm thực phẩm<br />
    <table style="width: 100%" font="TimeNewRoman;">
        <tr>
            <td style="width: 148px">Mã loại</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLoai" DataValueField="Maloai" AutoPostBack="True" Height="33px" Width="166px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT [Maloai], [TenLoai] FROM [tblLoaiTP]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlThemTP" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" DeleteCommand="DELETE FROM [tblThucpham] WHERE [MaTP] = @MaTP" InsertCommand="INSERT INTO [tblThucpham] ([Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (@Maloai, @TenTP, @Dongia, @Soluongco, @Mota, @urlAnh)" SelectCommand="SELECT * FROM [tblThucpham]" UpdateCommand="UPDATE [tblThucpham] SET [Maloai] = @Maloai, [TenTP] = @TenTP, [Dongia] = @Dongia, [Soluongco] = @Soluongco, [Mota] = @Mota, [urlAnh] = @urlAnh WHERE [MaTP] = @MaTP">
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
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Tên thực phẩm</td>
            <td>
                <asp:TextBox ID="txtten" runat="server" Width="242px"></asp:TextBox>
                <asp:Label ID="lblten" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Số lượng</td>
            <td>
                <asp:TextBox ID="txtslc" runat="server" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Đơn giá</td>
            <td>
                <asp:TextBox ID="txtgia" runat="server" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Mô tả</td>
            <td>
                <asp:TextBox ID="txtmota" runat="server" Height="222px" TextMode="MultiLine" Width="821px"></asp:TextBox>
                <asp:Label ID="lblmota" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">Hình ảnh</td>
            <td>
                <asp:FileUpload ID="FileUploadImage" runat="server" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelPath" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 148px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="btnUpload_Click" Text="Upload" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Image ID="ImageUpload" runat="server" Height="68px" Width="98px" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Button ID="btnThem" runat="server" Style="margin-left: 203px" Text="Thêm" OnClick="btnThem_Click" />
            </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Hủy bỏ" />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblthongbao" runat="server"></asp:Label>
            &nbsp;
            </td>
        </tr>
    </table>
    <br />
    &nbsp;
</asp:Content>

