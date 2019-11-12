<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Chitietthucpham.aspx.cs" Inherits="Chitietthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang chi tiết thực phẩm</h3>
    <table style="width: 100%">
        <tr>
            <td style="height: 333px">
                <asp:FormView ID="fvThongtin" runat="server" DataKeyNames="MaTP" DataSourceID="sqlThongtin" Height="109px" Width="100%">
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
                                <td class="nhantinkhuyenmai" style="width: 175px">Mã thực phẩm</td>
                                <td>
                                    <asp:Label ID="MaTPLabel" runat="server" Text='<%# Eval("MaTP") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="nhantinkhuyenmai" style="width: 175px">Mã Loại</td>
                                <td>
                                    <asp:Label ID="MaloaiLabel" runat="server" Text='<%# Bind("Maloai") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="nhantinkhuyenmai" style="width: 175px">Tên thực phẩm</td>
                                <td>
                                    <asp:Label ID="TenTPLabel" runat="server" Text='<%# Bind("TenTP") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="nhantinkhuyenmai" style="width: 175px">Đơn giá</td>
                                <td>
                                    <asp:Label ID="DongiaLabel" runat="server" Text='<%# Bind("Dongia") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 17px; width: 175px;">Số lượng có</td>
                                <td style="height: 17px">
                                    <asp:Label ID="SoluongcoLabel" runat="server" Text='<%# Bind("Soluongco") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="nhantinkhuyenmai" style="width: 175px">Mô tả</td>
                                <td>
                                    <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="nhantinkhuyenmai" style="width: 175px">Ảnh</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="182px" ImageUrl='<%# Eval("urlAnh", "{0}") %>' Width="294px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 165px">Số lượng mua</td>
                        <td>
                            <asp:DropDownList ID="ddlSoluongmua" runat="server">
                                <asp:ListItem Value="0">-- Lựa chọn số lượng mua --</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblSoluongmua" runat="server" EnableTheming="True" ForeColor="Red" Text="Bạn chưa chọn số lượng mua" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:SqlDataSource ID="sqlThongtin" runat="server" ConnectionString="<%$ ConnectionStrings:BTL_CSDLWEB_Nhom8ConnectionString %>" SelectCommand="SELECT * FROM [tblThucpham] WHERE ([MaTP] = @MaTP)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaTP" QueryStringField="MaTP" Type="Int32" />
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
                </td>
        </tr>
        <tr>
            <td><br /><br />
                <asp:Label ID="lblSession" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblTest" runat="server"><br /><br />
                Cám ơn quý khách !</asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

