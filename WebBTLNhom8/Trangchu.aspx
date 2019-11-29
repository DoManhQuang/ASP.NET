<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Trangchu" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTP" DataSourceID="sqlTrangchu" RepeatColumns="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black" CellSpacing="4" Width="90%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                    <table style="width: 100%; text-align:center">
                        <tr>
                            <td>
                                <a href="Chitietthucpham.aspx?MaTP=<%# Eval("MaTP") %>"><asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("urlAnh", "~/images/{0}") %>' Width="200px" /></a>
                                <br />
                                <a href="Chitietthucpham.aspx?MaTP=<%# Eval("MaTP") %>"><strong>
                                <asp:Label ID="TenTPLabel" runat="server" style="color: #336600; font-size: larger;" Text='<%# Eval("TenTP") %>' />
                                </strong></a>
                                <br />
                                <span class="pro_detail_offer" style="color: #CC0000"><span style="font-size: larger"><strong>Giá: </strong></span>
                                </span>
                                <span class="pro_detail_offer"><span style="font-size: larger"><strong>
                                <asp:Label ID="DongiaLabel" runat="server" style="color: #CC0000" Text='<%# Eval("Dongia") %>' />
                                </strong></span></span>
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
    <cc1:CollectionPager ControlCssClass="hung" ID="CollectionPager1" runat="server" BackNextLocation="None" HideOnSinglePage="True" ResultsFormat="" ResultsLocation="None" ShowFirstLast="False" ShowLabel="False"></cc1:CollectionPager>
</asp:Content>

