<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Chitietthucpham.aspx.cs" Inherits="Admin_Chitietthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>&nbsp;</h2>
    <h2>Chi tiết thực phẩm</h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaTP" DataSourceID="SqlDataSource1" CellPadding="4" style="margin-left: 50px" Width="818px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" GridLines="Both">
        <EditItemTemplate>
            <table style="width: 101%;">
                <tr>
                    <td style="width: 229px; height: 24px;">Mã thực phẩm</td>
                    <td style="height: 24px">
                        <asp:Label ID="MaTPLabel1" runat="server" Text='<%# Eval("MaTP") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 229px">Tên loại</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLoai" DataValueField="Maloai">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT [Maloai], [TenLoai] FROM [tblLoaiTP]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 229px;">Tên thực phẩm</td>
                    <td style="height: 25px">
                        <asp:TextBox ID="TenTPTextBox" runat="server" Text='<%# Bind("TenTP") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 229px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="DongiaTextBox" runat="server" Text='<%# Bind("Dongia") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 229px">Số lượng có</td>
                    <td>
                        <asp:TextBox ID="SoluongcoTextBox" runat="server" Text='<%# Bind("Soluongco") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 229px">Mô tả</td>
                    <td>
                        <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' Height="150px" TextMode="MultiLine" Width="317px" style="margin-left: 60" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 229px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="113px" Width="154px" ImageUrl='<%# Eval("urlAnh", "~/images/{0}") %>' />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" Text="Upload" />
                        <br />
                        <asp:FileUpload ID="uploadanh" runat="server" />
                        <br />
                        <asp:SqlDataSource ID="sqlUpdateTP" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" DeleteCommand="DELETE FROM [tblThucpham] WHERE [MaTP] = @MaTP" InsertCommand="INSERT INTO [tblThucpham] ([Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (@Maloai, @TenTP, @Dongia, @Soluongco, @Mota, @urlAnh)" SelectCommand="SELECT * FROM [tblThucpham]" UpdateCommand="UPDATE [tblThucpham] SET [Maloai] = @Maloai, [TenTP] = @TenTP, [Dongia] = @Dongia, [Soluongco] = @Soluongco, [Mota] = @Mota, [urlAnh] = @urlAnh WHERE [MaTP] = @MaTP">
                            <DeleteParameters>
                                <asp:Parameter Name="MaTP" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Maloai" Type="Int32" />
                                <asp:Parameter Name="TenTP" Type="String" />
                                <asp:Parameter Name="Dongia" Type="String" />
                                <asp:Parameter Name="Soluongco" Type="Int32" />
                                <asp:Parameter Name="Mota" Type="String" />
                                <asp:Parameter Name="urlAnh" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Maloai" Type="Int32" />
                                <asp:Parameter Name="TenTP" Type="String" />
                                <asp:Parameter Name="Dongia" Type="String" />
                                <asp:Parameter Name="Soluongco" Type="Int32" />
                                <asp:Parameter Name="Mota" Type="String" />
                                <asp:Parameter Name="urlAnh" Type="String" />
                                <asp:Parameter Name="MaTP" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Cập nhật" Text="Update" OnClick="UpdateButton_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Hủy bỏ" Text="Cancel" />
            <br />
        </EditItemTemplate>
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <InsertItemTemplate>
            Maloai:
            <asp:TextBox ID="MaloaiTextBox" runat="server" Text='<%# Bind("Maloai") %>' />
            <br />
            TenTP:
            <asp:TextBox ID="TenTPTextBox" runat="server" Text='<%# Bind("TenTP") %>' />
            <br />
            Dongia:
            <asp:TextBox ID="DongiaTextBox" runat="server" Text='<%# Bind("Dongia") %>' />
            <br />
            Soluongco:
            <asp:TextBox ID="SoluongcoTextBox" runat="server" Text='<%# Bind("Soluongco") %>' />
            <br />
            Mota:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            urlAnh:
            <asp:TextBox ID="urlAnhTextBox" runat="server" Text='<%# Bind("urlAnh") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table style="border-style: none; border-color: inherit; border-width: 1px; width: 95%; ">
                <tr>
                    <td style="width: 214px" rowspan="6">
                        <asp:Image ID="Image2" runat="server" Height="194px" ImageUrl='<%# Eval("urlAnh", "~/images/{0}") %>' Width="275px" />
                    </td>
                    <td style="width: 214px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 214px">Mã Thực Phẩm:</td>
                    <td>
                        <asp:Label ID="MaTPLabel" runat="server" Text='<%# Eval("MaTP") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 214px">Mã Loại:</td>
                    <td>
                        <asp:Label ID="MaloaiLabel" runat="server" Text='<%# Bind("Maloai") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 214px">Tên Thực Phẩm:</td>
                    <td>
                        <asp:Label ID="TenTPLabel" runat="server" Text='<%# Bind("TenTP") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 214px; height: 32px;">Đơn Giá:</td>
                    <td style="height: 32px">
                        <asp:Label ID="DongiaLabel" runat="server" Text='<%# Bind("Dongia") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 214px">Số Lượng Có:</td>
                    <td>
                        <asp:Label ID="SoluongcoLabel" runat="server" Text='<%# Bind("Soluongco") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 214px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mô tả:</td>
                    <td colspan="2">
                        <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
            &nbsp;
        </ItemTemplate>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" DeleteCommand="DELETE FROM [tblThucpham] WHERE [MaTP] = @MaTP" InsertCommand="INSERT INTO [tblThucpham] ([Maloai], [TenTP], [Dongia], [Soluongco], [Mota], [urlAnh]) VALUES (@Maloai, @TenTP, @Dongia, @Soluongco, @Mota, @urlAnh)" SelectCommand="SELECT * FROM [tblThucpham] WHERE ([MaTP] = @MaTP)" UpdateCommand="UPDATE [tblThucpham] SET [Maloai] = @Maloai, [TenTP] = @TenTP, [Dongia] = @Dongia, [Soluongco] = @Soluongco, [Mota] = @Mota, [urlAnh] = @urlAnh WHERE [MaTP] = @MaTP">
        <DeleteParameters>
            <asp:Parameter Name="MaTP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Maloai" Type="Int32" />
            <asp:Parameter Name="TenTP" Type="String" />
            <asp:Parameter Name="Dongia" Type="String" />
            <asp:Parameter Name="Soluongco" Type="Int32" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="urlAnh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Maloai" Type="Int32" />
            <asp:Parameter Name="TenTP" Type="String" />
            <asp:Parameter Name="Dongia" Type="String" />
            <asp:Parameter Name="Soluongco" Type="Int32" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="urlAnh" Type="String" />
            <asp:Parameter Name="MaTP" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MaTP" QueryStringField="MaTP" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

