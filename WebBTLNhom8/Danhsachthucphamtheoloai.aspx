<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Danhsachthucphamtheoloai.aspx.cs" Inherits="Danhsachthucphamtheoloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTP" DataSourceID="SqlDsThucPham" RepeatColumns="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                    <table style="width: 100%; text-align:center">
                        <tr>
                            <td>
                                <a href="Chitietthucpham.aspx?MaTP=<%# Eval("MaTP") %>"><asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urlAnh", "~/images/{0}") %>' Width="150px" /></a>
                                <br />
                                <a href="Chitietthucpham.aspx?MaTP=<%# Eval("MaTP") %>"><asp:Label ID="TenTPLabel" runat="server" Text='<%# Eval("TenTP") %>' style="color: #009900" /></a>
                                <br />
                                <span class="pro_detail_offer">Giá:
                                <asp:Label ID="DongiaLabel" runat="server" Text='<%# Eval("Dongia") %>' />
                                </span>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDsThucPham" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT [MaTP], [TenTP], [Dongia], [urlAnh] FROM [tblThucpham] WHERE ([Maloai] = @Maloai)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Maloai" QueryStringField="Maloai" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    
                
            

</asp:Content>

