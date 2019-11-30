<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="users_Donhang.aspx.cs" Inherits="users_Donhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Trang thông tin đơn hàng</h3>
    <p>&nbsp;</p>
    <p style="text-align: left">
        <asp:GridView ID="gvThontindonhang" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaDH" DataSourceID="SqlDonhang" Width="100%" Font-Size="14px" PageSize="3">
            <Columns>
                <asp:TemplateField HeaderText="Mã đơn hàng" InsertVisible="False" SortExpression="MaDH">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDH") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:45px;">
                            <asp:Label Width="20px" ID="Label1" runat="server" Text='<%# Bind("MaDH") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa chỉ nhận hàng" SortExpression="Diachinhanhang">
                    <EditItemTemplate>
                        <asp:TextBox Width="120px" ID="TextBox1" runat="server" Text='<%# Bind("Diachinhanhang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:20px;">
                            <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Height="69px" Text='<%# Bind("Diachinhanhang") %>' TextMode="MultiLine" Width="142px" EnableTheming="True"></asp:TextBox>
                        </div>
                    </ItemTemplate>
                    <ItemStyle Height="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Yêu cầu" SortExpression="Yeucaukhac">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Yeucaukhac") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:20px;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Yeucaukhac") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tổng tiền" SortExpression="Tongtien">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Tongtien") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:20px;">
                            <asp:Label ID="Label4" runat="server" Text='<%# string.Format("{0:#,0 VND}", Convert.ToInt32( Eval("Tongtien"))) %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <ControlStyle Height="70px" />
                    <ItemStyle Height="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tình trạng" SortExpression="Tinhtrang">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Tinhtrang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:20px;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Tinhtrang") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày mua" SortExpression="Ngaymua">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ngaymua") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:20px;">
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Ngaymua") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thông tin">
                    <ItemTemplate>
                        <div id="div1" style="margin: 30px auto; margin-left:20px;">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaDH", "~/users_Chitietthongtindonhang.aspx?MaDH={0}") %>' Text="Chi tiết"></asp:HyperLink>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDonhang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT [MaDH], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang] FROM [tblDonhang] WHERE ([MaTK] = @MaTK) ORDER BY [Ngaymua] DESC">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaTK" QueryStringField="MaTK" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

