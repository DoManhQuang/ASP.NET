<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Chitietdonhangaspx.aspx.cs" Inherits="admin_Chitietdonhangaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý đơn hàng</h2>
        </div>
    </header>
    <br />
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thông tin</h3>
    <p>&nbsp;</p>
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaDH" DataSourceID="SqlDataSource1" GridLines="Both" style="margin-left: 321px" Width="689px">
        <EditItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>Mã đơn hàng</td>
                    <td>
                        <asp:Label ID="MaDHLabel2" runat="server" Text='<%# Eval("MaDH") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Mã tài khoản</td>
                    <td>
                        <asp:TextBox ID="txtmatk" runat="server" Enabled="False" Text='<%# Bind("MaTK") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Địa chỉ nhận hàng</td>
                    <td>
                        <asp:TextBox ID="txtdiachi" runat="server" Enabled="False" Text='<%# Bind("Diachinhanhang") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Yêu cầu khác</td>
                    <td>
                        <asp:TextBox ID="txtyeucau" runat="server" Enabled="False" Text='<%# Bind("Yeucaukhac") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tổng tiền</td>
                    <td>
                        <asp:TextBox ID="txttongtien" runat="server" Enabled="False" Text='<%# Bind("Tongtien") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Ngày mua</td>
                    <td>
                        <asp:TextBox ID="txtngaymua" runat="server" Enabled="False" Text='<%# Bind("Ngaymua") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tình trạng</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>Chờ xác nhận đơn hàng</asp:ListItem>
                            <asp:ListItem>Đang đi lấy hàng về kho</asp:ListItem>
                            <asp:ListItem>Đang vận chuyển</asp:ListItem>
                            <asp:ListItem>Đã vận chuyển đến kho</asp:ListItem>
                            <asp:ListItem>Sẵn hàng giao hàng</asp:ListItem>
                            <asp:ListItem>Giao hàng thành công</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" OnClick="UpdateButton0_Click" Text="Cập nhật" Width="71px" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" style="margin-left: 43px" Text="Hủy bỏ" />
                    </td>
                </tr>
            </table>
            <br />
        </EditItemTemplate>
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <InsertItemTemplate>
            MaTK:
            <asp:TextBox ID="MaTKTextBox" runat="server" Text='<%# Bind("MaTK") %>' />
            <br />
            Diachinhanhang:
            <asp:TextBox ID="DiachinhanhangTextBox" runat="server" Text='<%# Bind("Diachinhanhang") %>' />
            <br />
            Yeucaukhac:
            <asp:TextBox ID="YeucaukhacTextBox" runat="server" Text='<%# Bind("Yeucaukhac") %>' />
            <br />
            Tongtien:
            <asp:TextBox ID="TongtienTextBox" runat="server" Text='<%# Bind("Tongtien") %>' />
            <br />
            Ngaymua:
            <asp:TextBox ID="NgaymuaTextBox" runat="server" Text='<%# Bind("Ngaymua") %>' />
            <br />
            Tinhtrang:
            <asp:TextBox ID="TinhtrangTextBox" runat="server" Text='<%# Bind("Tinhtrang") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>Mã đơn hàng</td>
                    <td>
                        <asp:Label ID="MaDHLabel0" runat="server" Text='<%# Eval("MaDH") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Mã tài khoản</td>
                    <td>
                        <asp:Label ID="MaTKLabel0" runat="server" Text='<%# Bind("MaTK") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Địa chỉ ngân hàng</td>
                    <td>
                        <asp:Label ID="DiachinhanhangLabel0" runat="server" Text='<%# Bind("Diachinhanhang") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Yêu cầu khác</td>
                    <td>
                        <asp:Label ID="YeucaukhacLabel0" runat="server" Text='<%# Bind("Yeucaukhac") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tổng tiền</td>
                    <td>
                        <asp:Label ID="TongtienLabel0" runat="server" Text='<%# Bind("Tongtien") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Ngày mua</td>
                    <td>
                        <asp:Label ID="NgaymuaLabel0" runat="server" Text='<%# Bind("Ngaymua") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tình trạng</td>
                    <td>
                        <asp:Label ID="TinhtrangLabel0" runat="server" Text='<%# Bind("Tinhtrang") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="EditButton0" runat="server" CausesValidation="False" CommandName="Edit" style="margin-left: 145px" Text="Sửa tình trạng " />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" DeleteCommand="DELETE FROM [tblDonhang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [tblDonhang] ([MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang]) VALUES (@MaTK, @Diachinhanhang, @Yeucaukhac, @Tongtien, @Ngaymua, @Tinhtrang)" SelectCommand="SELECT * FROM [tblDonhang] WHERE ([MaDH] = @MaDH)" UpdateCommand="UPDATE [tblDonhang] SET [MaTK] = @MaTK, [Diachinhanhang] = @Diachinhanhang, [Yeucaukhac] = @Yeucaukhac, [Tongtien] = @Tongtien, [Ngaymua] = @Ngaymua, [Tinhtrang] = @Tinhtrang WHERE [MaDH] = @MaDH">
        <DeleteParameters>
            <asp:Parameter Name="MaDH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaTK" Type="Int32" />
            <asp:Parameter Name="Diachinhanhang" Type="String" />
            <asp:Parameter Name="Yeucaukhac" Type="String" />
            <asp:Parameter Name="Tongtien" Type="String" />
            <asp:Parameter Name="Ngaymua" Type="DateTime" />
            <asp:Parameter Name="Tinhtrang" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaTK" Type="Int32" />
            <asp:Parameter Name="Diachinhanhang" Type="String" />
            <asp:Parameter Name="Yeucaukhac" Type="String" />
            <asp:Parameter Name="Tongtien" Type="String" />
            <asp:Parameter Name="Ngaymua" Type="DateTime" />
            <asp:Parameter Name="Tinhtrang" Type="String" />
            <asp:Parameter Name="MaDH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi tiết đơn hàng</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaCTDH,MaTP,MaDH" DataSourceID="SqlDataSource2" Style="margin-left: 317px" Width="701px">
        <Columns>
            <asp:BoundField DataField="MaCTDH" HeaderText="Mã chi tiết đơn hàng" InsertVisible="False" ReadOnly="True" SortExpression="MaCTDH" />
            <asp:BoundField DataField="MaTP" HeaderText="Mã thực phẩm" ReadOnly="True" SortExpression="MaTP" />
            <asp:BoundField DataField="MaDH" HeaderText="Mã đơn hàng" ReadOnly="True" SortExpression="MaDH" />
            <asp:BoundField DataField="Soluongmua" HeaderText="Số lượng mua" SortExpression="Soluongmua" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT * FROM [tblChitietDH] WHERE ([MaDH] = @MaDH)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />

</asp:Content>

