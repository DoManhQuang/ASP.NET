<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Suathongtintaikhoan.aspx.cs" Inherits="Suathongtintaikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sửa thông tin tài khoản </h2>
    <p>&nbsp;</p>
     <h4> <b> Thông tin đăng nhập&nbsp;&nbsp; </b></h4>
    <table style="width: 100%">
        <tr>
            <td style="width: 164px; height: 29px;">
             
            &nbsp;Email&nbsp;</td>
            <td style="height: 29px; width: 184px;">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="valRedEmail" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="    ( Cần nhập địa chỉ Email )" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="valExpEmail" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="( Email không hợp lệ )" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 25px;">
                Mật khẩu </td>
            <td style="height: 25px; width: 184px;">
                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 25px">
                <asp:RequiredFieldValidator ID="valRedMatkhau" runat="server" 
                    ControlToValidate="txtmatkhau" ErrorMessage="    ( Cần nhập mật khẩu )" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmatkhau" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+\w*\d+\w*">( Mật khẩu cần chứa ít nhất 1 số, 1 chữ và bắt đầu với 1 chữ )</asp:RegularExpressionValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 23px;">
                Nhập lại mật khẩu </td>
            <td style="height: 23px; width: 184px;">
                <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 23px">
                <asp:RequiredFieldValidator ID="valRedNhaplai" runat="server" 
                    ControlToValidate="txtnhaplai" ErrorMessage="( Cần nhập lại mật khẩu ) " 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="valComNhaplai" runat="server" 
                    ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" Display="Dynamic" 
                    ErrorMessage="( Mật khẩu không khớp )" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 23px;" colspan="3">
                <h4><b>Thông tin cá nhân</b></h4> </td>
            </tr>
        <tr>
            <td style="width: 164px; height: 2px;">
                Họ và tên </td>
            <td style="height: 2px; width: 184px;">
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 2px">
                <asp:RequiredFieldValidator ID="valRedTen" runat="server" 
                    ControlToValidate="txtten" ErrorMessage="( Cần nhập họ và tên )" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                Ngày sinh</td>
            <td style="height: 22px; width: 184px;">
                <asp:TextBox ID="txtNgaysinh" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:CompareValidator ID="valComNgaysinh" runat="server" 
                    ControlToValidate="txtNgaysinh" ErrorMessage="( Ngày sinh không hợp lệ )" 
                    ForeColor="Red" Operator="DataTypeCheck" Type="Date" Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="dNgaysinh" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="( Cần nhập ngày sinh )" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                Số điện thoại </td>
            <td style="height: 22px; width: 184px;">
                <asp:TextBox ID="txtsodienthoai" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="valRedSodienthoai" runat="server" 
                    ControlToValidate="txtsodienthoai" ErrorMessage="( Cần nhập số diện thoại )" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                Địa chỉ </td>
            <td style="height: 22px; width: 184px;">
                <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="valredDiachi" runat="server" 
                    ControlToValidate="txtdiachi" ErrorMessage="( Cần nhập lại địa chỉ  )" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 32px;">
                &nbsp;</td>
            <td style="height: 32px; width: 184px;">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    Text="Cập nhập" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td style="height: 32px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 32px;">
                &nbsp;</td>
            <td style="height: 32px; width: 184px;">
                <asp:Label ID="lblthongbao" runat="server"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>" 
                    DeleteCommand="DELETE FROM [tblTaikhoan] WHERE [MaTK] = @MaTK" 
                    InsertCommand="INSERT INTO [tblTaikhoan] ([Hoten], [Ngaysinh], [Diachi], [Sodienthoai], [email], [Matkhau], [Quyen]) VALUES (@Hoten, @Ngaysinh, @Diachi, @Sodienthoai, @email, @Matkhau, @Quyen)" 
                    SelectCommand="SELECT * FROM [tblTaikhoan]" 
                    UpdateCommand="UPDATE [tblTaikhoan] SET [Hoten] = @Hoten, [Ngaysinh] = @Ngaysinh, [Diachi] = @Diachi, [Sodienthoai] = @Sodienthoai, [email] = @email, [Matkhau] = @Matkhau, [Quyen] = @Quyen WHERE [MaTK] = @MaTK">
                    <DeleteParameters>
                        <asp:Parameter Name="MaTK" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Hoten" Type="String" />
                        <asp:Parameter DbType="Date" Name="Ngaysinh" />
                        <asp:Parameter Name="Diachi" Type="String" />
                        <asp:Parameter Name="Sodienthoai" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Matkhau" Type="String" />
                        <asp:Parameter Name="Quyen" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Hoten" Type="String" />
                        <asp:Parameter DbType="Date" Name="Ngaysinh" />
                        <asp:Parameter Name="Diachi" Type="String" />
                        <asp:Parameter Name="Sodienthoai" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Matkhau" Type="String" />
                        <asp:Parameter Name="Quyen" Type="Int32" />
                        <asp:Parameter Name="MaTK" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

