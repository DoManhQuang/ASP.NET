<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Timkiemsanpham.aspx.cs" Inherits="Timkiemsanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <asp:DataList
            ID="DataList1" runat="server" DataKeyField="MaTP"
            DataSourceID="SqlDataSource1" Width="453px" RepeatColumns="3">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server"
                                ImageUrl='<%# Eval("urlAnh", "~/images/{0}") %>' Height="200px"
                                Width="200px" />
                            <br />
                            <br />
                            &nbsp;<asp:Label ID="TenTPLabel" runat="server" Text='<%# Eval("TenTP") %>'
                                ForeColor="#009933" Height="25px" />
                            <br />
                            &nbsp;Giá:&nbsp;
                        <asp:Label ID="DongiaLabel" runat="server" Text='<%# string.Format("{0:#,0 VND}", Convert.ToInt32( Eval("Dongia"))) %>'
                            ForeColor="Red" />
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>"
            SelectCommand="SELECT * FROM [tblThucpham] WHERE ([TenTP] LIKE '%' + @TenTP + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="TenTP"
                    QueryStringField="TenTP" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <body>
    </body>

</asp:Content>

