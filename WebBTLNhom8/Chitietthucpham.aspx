<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Chitietthucpham.aspx.cs" Inherits="Chitietthucpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <%--<tr>
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
            </tr>--%>
            <tr>
                <td style="height: 177px">
                    <asp:FormView ID="fvThongtin" runat="server" DataSourceID="SqlDataSource1" Width="100%">
                        <EditItemTemplate>
                            TenTP:
                       
                        <asp:TextBox ID="TenTPTextBox" runat="server" Text='<%# Bind("TenTP") %>' />
                            <br />
                            Dongia:
                       
                        <asp:TextBox ID="DongiaTextBox" runat="server" Text='<%# Bind("Dongia") %>' />
                            <br />
                            Mota:
                       
                        <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                            <br />
                            Soluongco:
                       
                        <asp:TextBox ID="SoluongcoTextBox" runat="server" Text='<%# Bind("Soluongco") %>' />
                            <br />
                            urlAnh:
                       
                        <asp:TextBox ID="urlAnhTextBox" runat="server" Text='<%# Bind("urlAnh") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            TenTP:
                       
                        <asp:TextBox ID="TenTPTextBox" runat="server" Text='<%# Bind("TenTP") %>' />
                            <br />
                            Dongia:
                       
                        <asp:TextBox ID="DongiaTextBox" runat="server" Text='<%# Bind("Dongia") %>' />
                            <br />
                            Mota:
                       
                        <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                            <br />
                            Soluongco:
                       
                        <asp:TextBox ID="SoluongcoTextBox" runat="server" Text='<%# Bind("Soluongco") %>' />
                            <br />
                            urlAnh:
                       
                        <asp:TextBox ID="urlAnhTextBox" runat="server" Text='<%# Bind("urlAnh") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table style="width: 66%; height: 162px;">
                                <tr>
                                    <td rowspan="4" style="padding-right: 30px;">
                                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("urlAnh", "~/images/{0}") %>' Width="250px" />
                                    </td>
                                    <td style="text-align: left; height: 43px">
                                        <b style="font-family: Tahoma">
                                            <asp:Label ID="TenTPLabel" runat="server" ForeColor="#009900" Text='<%# Bind("TenTP") %>' style="font-size: larger; color: #336600;"/></b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 53px"><span style="font-size: larger; font-family:Tahoma;"><span style="color: #CC0000"><strong>Giá:</strong></span> </span><strong>
                                        <asp:Label ID="DongiaLabel" runat="server" ForeColor="#CC0000" style="font-size: larger" Text='<%# Bind("Dongia","{0:0,0 vnđ}") %>' />
                                        <br />
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: Tahoma;">
                                        <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' Width="300px" />
                                    </td>
                                </tr>
                                
                            </table>
                            <br />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" SelectCommand="SELECT [TenTP], [Dongia], [Mota], [Soluongco], [urlAnh] FROM [tblThucpham] WHERE ([MaTP] = @MaTP)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="MaTP" QueryStringField="MaTP" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                </td>
            </tr>
            <table style="width: 100%">
                <tr>
                    <td style="width: 165px">Số lượng mua</td>
                    <td>
                        <asp:TextBox ID="txtSoluongmua" runat="server" Width="177px">1</asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblSoluongmua" runat="server" EnableTheming="True" ForeColor="Red" Text="Bạn chưa chọn số lượng mua" Visible="False"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 165px">
                <asp:LinkButton ID="lnkbtnThemgiohang" runat="server" OnClick="lnkbtnThemgiohang_Click">Thêm Giỏ Hàng</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;</td>
                    <td>
                <asp:LinkButton ID="lnkbtnGiohang" runat="server" PostBackUrl="~/Giohang.aspx">Giỏ Hàng</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <%--<asp:SqlDataSource ID="sqlThongtin" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT * FROM [tblThucpham] WHERE ([MaTP] = @MaTP)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaTP" QueryStringField="MaTP" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>--%>
            <br />
            </td>
            
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:Label ID="lblSession" runat="server"></asp:Label>
                <br />
                <br />
                <asp:SqlDataSource ID="sqlGetDataTP" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT * FROM [tblThucpham]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

