<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="users_Chitietthongtindonhang.aspx.cs" Inherits="users_Chitietthongtindonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                MaDH:
                <asp:Label ID="MaDHLabel" runat="server" Text='<%# Eval("MaDH") %>' />
                <br />
                Diachinhanhang:
                <asp:Label ID="DiachinhanhangLabel" runat="server" Text='<%# Bind("Diachinhanhang") %>' />
                <br />
                Yeucaukhac:
                <asp:Label ID="YeucaukhacLabel" runat="server" Text='<%# Bind("Yeucaukhac") %>' />
                <br />
                Tongtien:
                <asp:Label ID="TongtienLabel" runat="server" Text='<%# Bind("Tongtien") %>' />
                <br />
                Ngaymua:
                <asp:Label ID="NgaymuaLabel" runat="server" Text='<%# Bind("Ngaymua") %>' />
                <br />
                Tinhtrang:
                <asp:Label ID="TinhtrangLabel" runat="server" Text='<%# Bind("Tinhtrang") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:GridView ID="gvDSThucpham" runat="server" AutoGenerateColumns="False" DataSourceID="sqlDSthucpham">
            <Columns>
                <asp:BoundField DataField="MaTP" HeaderText="MaTP" SortExpression="MaTP" />
                <asp:BoundField DataField="Soluongmua" HeaderText="Soluongmua" SortExpression="Soluongmua" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="sqlDonhang" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT [MaDH], [Diachinhanhang], [Yeucaukhac], [Tongtien], [Ngaymua], [Tinhtrang] FROM [tblDonhang] WHERE ([MaDH] = @MaDH)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaDH" QueryStringField="MaDH" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlDSthucpham" runat="server" ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString2 %>" SelectCommand="SELECT [MaTP], [Soluongmua] FROM [tblChitietDH]"></asp:SqlDataSource>
    </p>
</asp:Content>

