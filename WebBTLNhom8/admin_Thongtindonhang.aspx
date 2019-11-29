<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_Thongtindonhang.aspx.cs" Inherits="Thongtindonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Quản lý đơn hàng</h2>
        </div>
    </header>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaDH" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Style="margin-left: 44px; margin-top: 67px" Width="1088px" OnRowUpdated="GridView1_RowUpdated1">
        <Columns>
            <asp:TemplateField HeaderText="Mã đơn hàng" InsertVisible="False" SortExpression="MaDH">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDH") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDH") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã tài khoản" SortExpression="MaTK">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text='<%# Bind("MaTK") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MaTK") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Địa chỉ nhận hàng" SortExpression="Diachinhanhang">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Text='<%# Bind("Diachinhanhang") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Diachinhanhang") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Yêu cầu khác" SortExpression="Yeucaukhac">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Text='<%# Bind("Yeucaukhac") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Yeucaukhac") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tổng tiền" SortExpression="Tongtien">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Text='<%# Bind("Tongtien") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Tongtien") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày mua" SortExpression="Ngaymua">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Text='<%# Bind("Ngaymua") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Ngaymua") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tình trạng" SortExpression="Tinhtrang">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Tinhtrang") %>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddltinhtrang" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="0">Chờ xác nhận đơn hàng</asp:ListItem>
                        <asp:ListItem Value="1">Đang đi lấy hàng về kho</asp:ListItem>
                        <asp:ListItem Value="2">Đang vận chuyển</asp:ListItem>
                        <asp:ListItem Value="3">Đã vận chuyển đến kho</asp:ListItem>
                        <asp:ListItem Value="4">Sẵn hàng giao hàng</asp:ListItem>
                        <asp:ListItem Value="5">Giao hàng thành công</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Tinhtrang") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" />
            <asp:HyperLinkField DataNavigateUrlFields="MaDH" DataNavigateUrlFormatString="admin_chitietdonhangaspx.aspx?MaDH={0}" NavigateUrl="~/admin_Chitietdonhangaspx.aspx" Text="chi tiết..." />
        </Columns>
        <EmptyDataTemplate>
            [
           
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" DeleteCommand="DELETE FROM [tblDonhang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [tblDonhang] ([MaTK], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang]) VALUES (@MaTK, @Diachinhanhang, @Yeucaukhac, @Tongtien, @Ngaymua, @Tinhtrang)" SelectCommand="SELECT * FROM [tblDonhang]" UpdateCommand="UPDATE [tblDonhang] SET [MaTK] = @MaTK, [Diachinhanhang] = @Diachinhanhang, [Yeucaukhac] = @Yeucaukhac, [Tongtien] = @Tongtien, [Ngaymua] = @Ngaymua, [Tinhtrang] = @Tinhtrang WHERE [MaDH] = @MaDH">
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

