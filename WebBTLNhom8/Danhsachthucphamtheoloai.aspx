<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Danhsachthucphamtheoloai.aspx.cs" Inherits="Danhsachthucphamtheoloai" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTP" DataSourceID="SqlDsThucPham" RepeatColumns="3" Width="695px">
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
                                <span><span style="font-size: larger; color: #CC0000"><strong>Giá:</strong></span></span><span class="pro_detail_offer">
                                <strong>
                                <asp:Label ID="DongiaLabel" runat="server" style="font-size: larger; color: #CC0000" Text='<%# Eval("Dongia") %>' />
                                </strong>
                                </span>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDsThucPham" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT [MaTP], [TenTP], [Dongia], [urlAnh] FROM [tblThucpham] WHERE ([Maloai] = @Maloai)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Maloai" QueryStringField="Maloai" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    
                <cc1:CollectionPager ControlCssClass="hung" ID="CollectionPager1" runat="server" BackNextLocation="None" ResultsFormat="" ShowLabel="False"></cc1:CollectionPager>
            

</asp:Content>

