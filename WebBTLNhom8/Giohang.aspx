<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang Giỏ Hàng</h3>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="gvThucpham" runat="server" AutoGenerateColumns="False" Width="100%">
            <Columns>
                <asp:BoundField DataField="MaTP" HeaderText="Mã thực phẩm" SortExpression="MaTP" />
                <asp:TemplateField HeaderText="Tên hàng">
                    <ItemTemplate>
                        <asp:Label ID="lblTenTP" runat="server" Text='<%# Eval("TenTP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Soluongmua") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Thanhtien" HeaderText="Thành tiền" />
                <asp:ButtonField ButtonType="Button" Text="Xóa" />
            </Columns>
        </asp:GridView>
    </p>
    <table style="width: 100%">
        <tr>
            <td colspan="2">Tổng Tiền</td>
            <td>
                <asp:Label ID="lblTongtien" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnMuahangtiep" runat="server" Height="35px" Text="Tiếp tục mua hàng" Width="151px" />
            </td>
            <td>
                <asp:Button ID="btnXoagiohang" runat="server" Height="35px" OnClick="btnXoagiohang_Click" Text="Xóa giỏ hàng" Width="138px" />
            </td>
            <td>
                <asp:Button ID="btnDatmua" runat="server" Height="35px" Text="Đặt mua" Width="138px" />
            </td>
        </tr>
    </table>
</asp:Content>

