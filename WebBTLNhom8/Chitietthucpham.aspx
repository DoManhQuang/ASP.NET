<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Chitietthucpham.aspx.cs" Inherits="Chitietthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang chi tiết thực phẩm</h3>
    <table style="width: 100%">
        <tr>
            <td style="height: 333px">
                <asp:FormView ID="fvThongtin" runat="server" DataKeyNames="MaTP" DataSourceID="sqlThongtin" Height="109px" Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
                    <EditItemTemplate>
                        MaTP:
                        <asp:Label ID="MaTPLabel1" runat="server" Text='<%# Eval("MaTP") %>' />
                        <br />
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
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
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 134px">Mã thực phẩm</td>
                                <td>
                                    <asp:Label ID="MaTPLabel" runat="server" Text='<%# Eval("MaTP") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 134px">Mã loại</td>
                                <td>
                                    <asp:Label ID="MaloaiLabel" runat="server" Text='<%# Bind("Maloai") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 134px">Tên thực phẩm</td>
                                <td>
                                    <asp:Label ID="TenTPLabel" runat="server" Text='<%# Bind("TenTP") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 134px">Đơn giá</td>
                                <td>
                                    <asp:Label ID="DongiaLabel" runat="server" Text='<%# Bind("Dongia") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 134px">Số lượng có</td>
                                <td>
                                    <asp:Label ID="SoluongcoLabel" runat="server" Text='<%# Bind("Soluongco") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 134px">Mô tả</td>
                                <td>
                                    <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 134px">Ảnh</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="170px" Width="209px" ImageUrl='<%# Eval("urlAnh", "{0}") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />

                    </ItemTemplate>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:FormView>
                <br />
                <asp:SqlDataSource ID="sqlThongtin" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT * FROM [tblThucpham] WHERE ([MaTP] = @MaTP)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="MaTP" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkbtnThemgiohang" runat="server" OnClick="lnkbtnThemgiohang_Click">Thêm Giỏ Hàng</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnGiohang" runat="server" PostBackUrl="~/Giohang.aspx">Giỏ Hàng</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnClearCart" runat="server" OnClick="lnkbtnClearCart_Click">Xóa Giỏ Hàng</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td><br /><br /><br /><br /><br />
                Cám ơn quý khách !</td>
        </tr>
    </table>

</asp:Content>

