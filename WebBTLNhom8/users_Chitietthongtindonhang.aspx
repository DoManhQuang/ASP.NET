<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="users_Chitietthongtindonhang.aspx.cs" Inherits="users_Chitietthongtindonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Chi tiết đơn hàng</h3>
    <p>&nbsp;</p>
    <p>
        <asp:FormView ID="fvThontindonhang" runat="server" DataKeyNames="MaDH" DataSourceID="sqlDonhang" Width="100%">
            <EditItemTemplate>
                MaDH:
                <asp:Label ID="MaDHLabel1" runat="server" Text='<%# Eval("MaDH") %>' />
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
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
                <table style="width: 100%;">
                    <tr>
                        <td>Mã đơn hàng</td>
                        <td>
                            <asp:Label ID="MaDHLabel" runat="server" Text='<%# Eval("MaDH") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ nhận hàng</td>
                        <td>
                            <asp:Label ID="DiachinhanhangLabel" runat="server" Text='<%# Bind("Diachinhanhang") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Yêu cầu khác</td>
                        <td>
                            <asp:Label ID="YeucaukhacLabel" runat="server" Text='<%# Bind("Yeucaukhac") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày mua</td>
                        <td>
                            <asp:Label ID="NgaymuaLabel" runat="server" Text='<%# Bind("Ngaymua") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Tình trạng</td>
                        <td>
                            <asp:Label ID="TinhtrangLabel" runat="server" Text='<%# Bind("Tinhtrang") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Tổng tiền</td>
                        <td>
                            <asp:Label ID="TongtienLabel" runat="server" Text='<%# Bind("Tongtien") %>' />
                        </td>
                    </tr>
                </table>
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
    <p style="text-align: center">
        <asp:GridView ID="gvDSThucpham" runat="server" AutoGenerateColumns="False" DataSourceID="sqlDSthucpham" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaTP" Font-Size="14px" PageSize="5" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="Mã thực phẩm" InsertVisible="False" SortExpression="MaTP">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaTP") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div style="margin: 30px auto; margin-left: 60px;">
                            <asp:Label Width="70px" ID="lblMaTP" runat="server" Text='<%# Bind("MaTP") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <ItemStyle Height="70px" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên thực phẩm" SortExpression="TenTP">
                    <EditItemTemplate>
                        <asp:TextBox  ID="TextBox4" runat="server" Text='<%# Bind("TenTP") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div style="margin: 30px auto; margin-left: 20px;">
                            <asp:LinkButton RowIndex="<%# Container.DisplayIndex %>" CommandArgument="<%# Container.DataItemIndex %>" ID="lnkbtnTenthucpham" runat="server" OnClick="lnkbtnTenthucpham_Click" Text='<%# Bind("TenTP") %>'></asp:LinkButton>
                        </div>
                    </ItemTemplate>
                    <ItemStyle Width="150px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ảnh thực phẩm">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("urlAnh", "~/{0}") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="70px" Width="100px" />
                    <ItemStyle Height="50px" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số lượng mua" SortExpression="Soluongmua">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Soluongmua") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div style="margin: 30px auto; margin-left: 60px;">
                            <asp:Label Width="70px" ID="Label3" runat="server" Text='<%# Bind("Soluongmua") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <ItemStyle Height="70px" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Đơn giá" SortExpression="Dongia">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Dongia") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div style="margin: 30px auto; margin-left: 30px;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Dongia") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thành tiền" SortExpression="Thanhtien">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Thanhtien") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div style="margin: 30px auto; margin-left: 55px;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Thanhtien") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle Font-Size="12px" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="50px"/>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle Font-Size="14px" ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="float: right;">
                <asp:Button ID="Button2" runat="server" Height="25px" PostBackUrl="~/Trangchu.aspx" Text="Mua sắm" Width="85px" />
            </td>
        </tr>
    </table>
    <p>
        <asp:SqlDataSource ID="sqlDonhang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT [MaDH], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang] FROM [tblDonhang] WHERE ([MaDH] = @MaDH)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlDSthucpham" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT tblThucpham.MaTP, tblThucpham.TenTP, tblThucpham.urlAnh, tblChitietDH.Soluongmua, tblThucpham.Dongia, CAST(tblThucpham.Dongia AS int) * tblChitietDH.Soluongmua AS 'Thanhtien' FROM tblChitietDH INNER JOIN tblThucpham ON tblChitietDH.MaTP = tblThucpham.MaTP WHERE (tblChitietDH.MaDH = @MaDH)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

