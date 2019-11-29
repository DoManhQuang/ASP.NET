<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Thongtindonhang.aspx.cs" Inherits="Thongtindonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý đơn hàng</h2>
            <p class="no-margin-bottom">&nbsp;</p>
            <p class="no-margin-bottom">
                <asp:GridView ID="gvDonhang" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaDH" DataSourceID="sqlDonhang" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="MaDH" InsertVisible="False" SortExpression="MaDH">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDH") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDH") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Diachinhanhang" SortExpression="Diachinhanhang">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Diachinhanhang") %>'></asp:TextBox>
                                <br />
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Diachinhanhang") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Yeucaukhac" SortExpression="Yeucaukhac">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Yeucaukhac") %>'></asp:TextBox>
                                <br />
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Yeucaukhac") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Yeucaukhac") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tongtien" SortExpression="Tongtien">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Tongtien") %>'></asp:TextBox>
                                <br />
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Tongtien") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Tongtien") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngaymua" SortExpression="Ngaymua">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ngaymua") %>'></asp:TextBox>
                                <br />
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Ngaymua") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Ngaymua") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tinhtrang" SortExpression="Tinhtrang">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Tinhtrang") %>'></asp:TextBox>
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="167px">
                                    <asp:ListItem Value="Chờ xác nhận đơn hàng">Chờ xác nhận đơn hàng</asp:ListItem>
                                    <asp:ListItem>Đang đi lấy hàng về kho</asp:ListItem>
                                    <asp:ListItem>Đang vận chuyển</asp:ListItem>
                                    <asp:ListItem>Đã vận chuyển đến kho</asp:ListItem>
                                    <asp:ListItem>Sẵn hàng giao hàng</asp:ListItem>
                                    <asp:ListItem>Giao hàng thành công</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Tinhtrang") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CancelText="Thoát" EditText="Sửa" HeaderText="Cập nhật" ShowEditButton="True" UpdateText="Sửa" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </p>
        </div>
    </header>
    <asp:SqlDataSource ID="sqlDonhang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" DeleteCommand="DELETE FROM [tblDonhang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [tblDonhang] ([Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang]) VALUES (@Diachinhanhang, @Yeucaukhac, @Tongtien, @Ngaymua, @Tinhtrang)" SelectCommand="SELECT [MaDH], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang] FROM [tblDonhang]" UpdateCommand="UPDATE [tblDonhang] SET [Diachinhanhang] = @Diachinhanhang, [Yeucaukhac] = @Yeucaukhac, [Tongtien] = @Tongtien, [Ngaymua] = @Ngaymua, [Tinhtrang] = @Tinhtrang WHERE [MaDH] = @MaDH">
        <DeleteParameters>
            <asp:Parameter Name="MaDH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Diachinhanhang" Type="String" />
            <asp:Parameter Name="Yeucaukhac" Type="String" />
            <asp:Parameter Name="Tongtien" Type="String" />
            <asp:Parameter Name="Ngaymua" Type="DateTime" />
            <asp:Parameter Name="Tinhtrang" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Diachinhanhang" Type="String" />
            <asp:Parameter Name="Yeucaukhac" Type="String" />
            <asp:Parameter Name="Tongtien" Type="String" />
            <asp:Parameter Name="Ngaymua" Type="DateTime" />
            <asp:Parameter Name="Tinhtrang" Type="String" />
            <asp:Parameter Name="MaDH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlCapnhaptinhtrang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" DeleteCommand="DELETE FROM [tblDonhang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [tblDonhang] ([MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang]) VALUES (@MaTK, @Diachinhanhang, @Yeucaukhac, @Tongtien, @Ngaymua, @Tinhtrang)" SelectCommand="SELECT * FROM [tblDonhang]" UpdateCommand="UPDATE [tblDonhang] SET [MaTK] = @MaTK, [Diachinhanhang] = @Diachinhanhang, [Yeucaukhac] = @Yeucaukhac, [Tongtien] = @Tongtien, [Ngaymua] = @Ngaymua, [Tinhtrang] = @Tinhtrang WHERE [MaDH] = @MaDH">
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
    <asp:Label ID="lblloi" runat="server"></asp:Label>
    <br />
    <br />
    &nbsp;
</asp:Content>

