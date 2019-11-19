<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Trang Giỏ Hàng</h3>
    <p>&nbsp;</p>
    <p style="text-align = center;">
        <asp:GridView ID="gvGiohang" runat="server" Width="100%" AutoGenerateColumns="False" Height="150px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>    
<%--                 <asp:BoundField DataField="ItemId" HeaderText="Item ID" ItemStyle-Width="30" />    
                 <asp:BoundField DataField="ItemName" HeaderText="Item Name" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="ItemQuantity" HeaderText="Item Quantity" ItemStyle-Width="150" />--%>   
                 <asp:BoundField DataField="STT" HeaderText="STT" ItemStyle-Width="50" > 
<ItemStyle Width="50px"></ItemStyle>
                </asp:BoundField>
                 <asp:BoundField DataField="MaTP" HeaderText="Mã thực phẩm" ItemStyle-Width="120" >    
<ItemStyle Width="120px"></ItemStyle>
                </asp:BoundField>
                 <asp:BoundField DataField="TenTP" HeaderText="Tên thực phẩm" ItemStyle-Width="150" >    
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                 <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" ItemStyle-Width="100" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                 <asp:BoundField DataField="Soluongmua" HeaderText="Số lượng mua" ItemStyle-Width="100" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                 <asp:BoundField DataField="Thanhtien" HeaderText="Thành tiền" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:ButtonField ButtonType="Button" Text="Xóa" />
             </Columns> 
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"/>
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

        <br />
        <br />

        <table style="width: 100%; height: 30px; margin-bottom: 50px;" border="1">
        <tr>
            <td style="width: 30%; padding:5px; font-size:15px;">
                <asp:Label ID="Label1" runat="server" Text="Tổng Tiền"></asp:Label>
            </td>

            <td style="width: 70%; padding:5px; font-size:15px;">
                <p style="float:right;">
                <asp:Label ID="lblTongtien" runat="server"></asp:Label>
                    </p>
            </td>
        </tr>
        </table>
    <br />
        <table style="width: 100%">
        <tr>
            <td>
                <asp:Button ID="btnMuahangtiep" runat="server" Height="35px" Text="Tiếp tục mua hàng" Width="151px" OnClick="btnMuahangtiep_Click" />
            </td>
            <td>
                <asp:Button ID="btnXoagiohang" runat="server" Height="35px" OnClick="btnXoagiohang_Click" Text="Xóa giỏ hàng" Width="138px" />
            </td>
            <td>
                <asp:Button ID="btnDatmua" runat="server" Height="35px" Text="Đặt mua" Width="138px" OnClick="btnDatmua_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

