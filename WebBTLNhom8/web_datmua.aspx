<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="web_datmua.aspx.cs" Inherits="web_datmua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Thông tin khách hàng</h3>
    <p>&nbsp;</p>
    <table style="width: 100%; margin-left:50px;">
        <tr>
            <td style="width: 122px">
                <asp:Label ID="Label1" runat="server" Text="Tên khách hàng"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHoten" runat="server" Height="24px" Width="240px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTenKHerr" runat="server" ForeColor="Red" Text="Bạn cần nhập *" Visible="False"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Địa chỉ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDiachi" runat="server" Height="120px" TextMode="MultiLine" Width="242px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDcerr" runat="server" ForeColor="Red" Text="Bạn cần nhập *" Visible="False"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
                <asp:Label ID="Label3" runat="server" Text="Số điện thoại"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSdt" runat="server" Height="24px" Width="240px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSdterr" runat="server" ForeColor="Red" Text="Bạn cần nhập *" Visible="False"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="240px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblemailerr" runat="server" ForeColor="Red" Text="Bạn cần nhập *" Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 122px;">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Yêu cầu thêm"></asp:Label>
            </td>
            <td style="height: 17px">
                <br />
                <asp:DropDownList ID="ddlYeucau" runat="server" AppendDataBoundItems="True" Height="24px" Width="244px">
                    <asp:ListItem Value="0">Giao hàng 2h</asp:ListItem>
                    <asp:ListItem Value="1">Giao hàng 3h</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 122px;">
                <asp:Label ID="Label6" runat="server" Text="Tổng Tiền"></asp:Label>
            </td>
            <td style="height: 17px">
                <asp:Label ID="lblTongtien" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
                &nbsp;</td>
            <td>
                <br />
                <br />
                <asp:Button ID="btnDatmua" runat="server" Height="31px" Text="Đặt mua" Width="87px" OnClick="btnDatmua_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnQuaylai" runat="server" Height="32px" PostBackUrl="~/Trangchu.aspx" Text="Tiếp tục mua" Width="83px" />
                <br />
                <br />
                <asp:SqlDataSource ID="sqlDatmua" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" DeleteCommand="DELETE FROM [tblDonhang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [tblDonhang] ([MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua]) VALUES (@MaTK, @Diachinhanhang, @Yeucaukhac, @Tongtien, @Ngaymua)" SelectCommand="SELECT * FROM [tblDonhang]" UpdateCommand="UPDATE [tblDonhang] SET [MaTK] = @MaTK, [Diachinhanhang] = @Diachinhanhang, [Yeucaukhac] = @Yeucaukhac, [Tongtien] = @Tongtien, [Ngaymua] = @Ngaymua WHERE [MaDH] = @MaDH">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDH" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaTK" Type="Int32" />
                        <asp:Parameter Name="Diachinhanhang" Type="String" />
                        <asp:Parameter Name="Yeucaukhac" Type="String" />
                        <asp:Parameter Name="Tongtien" Type="String" />
                        <asp:Parameter Name="Ngaymua" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MaTK" Type="Int32" />
                        <asp:Parameter Name="Diachinhanhang" Type="String" />
                        <asp:Parameter Name="Yeucaukhac" Type="String" />
                        <asp:Parameter Name="Tongtien" Type="String" />
                        <asp:Parameter Name="Ngaymua" Type="DateTime" />
                        <asp:Parameter Name="MaDH" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

