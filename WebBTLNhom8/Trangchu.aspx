<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTP" DataSourceID="sqlTrangchu" RepeatColumns="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black" CellSpacing="4" Width="90%">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
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
        <p>
            <asp:SqlDataSource ID="sqlTrangchu" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT [MaTP], [TenTP], [Dongia], [urlAnh] FROM [tblThucpham] ORDER BY NEWID()"></asp:SqlDataSource>
        </p>
        
</asp:Content>

