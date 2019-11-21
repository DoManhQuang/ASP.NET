<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Trang Giỏ Hàng</h3>
    <p>&nbsp;</p>
    <p style="text-align = center;">
        <div class="home_news_content" style="text-align: center">
            <asp:GridView ID="gvGiohang" runat="server" Width="100%" AutoGenerateColumns="False" Height="70px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <%--                 <asp:BoundField DataField="ItemId" HeaderText="Item ID" ItemStyle-Width="30" />    
                 <asp:BoundField DataField="ItemName" HeaderText="Item Name" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="ItemQuantity" HeaderText="Item Quantity" ItemStyle-Width="150" />--%>
                    <asp:TemplateField HeaderStyle-Font-Size="15px" HeaderText="Mã thực phẩm">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MaTP") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <div style="margin: 20px auto">
                                <asp:Label Font-Size="15px" ID="lblMaTP" runat="server" Text='<%# Bind("MaTP") %>'></asp:Label>
                            </div>
                        </ItemTemplate>

                        <HeaderStyle Font-Size="15px" Height="50px"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Bottom" Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Font-Size="15px" HeaderText="Tên thực phẩm">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TenTP") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div style="margin: 20px auto">
                                <asp:Label Font-Size="15px" ID="Label1" runat="server" Text='<%# Bind("TenTP") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <ControlStyle Font-Size="15px" />

                        <HeaderStyle Font-Size="15px"></HeaderStyle>

                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:ImageField HeaderStyle-Font-Size="15px" DataImageUrlField="Path" DataImageUrlFormatString="~/{0}" HeaderText="Ảnh thực phẩm">
                        
                        <ControlStyle Height="50px" Width="100px"/>
                        <HeaderStyle Font-Size="15px"></HeaderStyle>
                        <ItemStyle Width="100px" Height="50px" />
                    </asp:ImageField>
                    <asp:TemplateField HeaderStyle-Font-Size="15px" HeaderText="Đơn giá">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Dongia") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div style="margin: 20px auto">
                                <asp:Label Font-Size="15px" ID="Label2" runat="server" Text='<%# Bind("Dongia") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <ControlStyle Font-Size="15px" />

                        <HeaderStyle Font-Size="15px"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Font-Size="15px" HeaderText="Số lượng mua">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Soluongmua") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div style="margin: 20px auto">
                                <table style="width: 100%">

                                    <tr style="text-align: center;">
                                        <td>
                                            <asp:ImageButton ID="imgbtnTang" runat="server" Height="20px" ImageUrl="~/data/img/add-circle-green-512.png" Width="5px" OnClick="imgbtnTang_Click" />
                                        </td>
                                        <td>
                                            <asp:Label Font-Size="15px" ID="lblSoluongmua" runat="server" Text='<%# Bind("Soluongmua") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="imgbtnGiam" runat="server" Height="20px" ImageUrl="~/data/img/05-512.png" Width="5px" OnClick="imgbtnGiam_Click" />
                                        </td>
                                    </tr>

                                </table>
                            </div>
                        </ItemTemplate>
                        <ControlStyle Width="20px" />

                        <HeaderStyle Font-Size="15px"></HeaderStyle>

                        <ItemStyle Width="20px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Font-Size="15px" HeaderText="Thành tiền">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Thanhtien") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div style="margin: 20px auto">
                                <asp:Label Font-Size="15px" ID="Label3" runat="server" Text='<%# Bind("Thanhtien") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <ControlStyle Font-Size="15px" />

                        <HeaderStyle Font-Size="15px"></HeaderStyle>

                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

        </div>

        <br />
        <br />

        <table style="width: 100%; height: 30px; margin-bottom: 50px;" border="1">
            <tr>
                <td style="width: 30%; padding: 5px; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Tổng Tiền"></asp:Label>
                </td>

                <td style="width: 70%; padding: 5px; font-size: 15px;">
                    <p style="float: right;">
                        <asp:Label ID="lblTongtien" runat="server"></asp:Label>
                    </p>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%">
            <tr>
                <td>
                    <asp:Button ID="btnMuahangtiep" runat="server" Height="35px" Text="Tiếp tục mua hàng" Width="151px" PostBackUrl="~/Trangchu.aspx" />
                </td>
                <td>
                    <asp:Button ID="btnXoagiohang" runat="server" Height="35px" OnClick="btnXoagiohang_Click" Text="Xóa giỏ hàng" Width="138px" />
                </td>
                <td>
                    <asp:Button ID="btnDatmua" runat="server" Height="35px" Text="Đặt mua" Width="138px" OnClick="btnDatmua_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblCapnhap" runat="server"></asp:Label>
</asp:Content>

