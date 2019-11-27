<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            Đăng ký thành viên &nbsp;</h1>
     
    <table style="width: 100%">
    <tr>
    <td style="height: 23px;" colspan="3"><h3> <b  > Thông tin đăng nhập</b></h3></td>
    </tr>
        <tr>
            <td style="width: 164px; height: 29px;">
             
            &nbsp;<asp:Label 
                    ID="lblEmail" runat="server" Text="Email"></asp:Label>
                &nbsp;</td>
            <td style="height: 29px; width: 137px;">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="valRedEmail" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="( Cần nhập địa chỉ Email )" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="valExpEmail" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="( Email không hợp lệ )" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 25px;">
                <asp:Label ID="Label1" runat="server" Text="Mật khẩu "></asp:Label>
            </td>
            <td style="height: 25px; width: 137px;">
                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 25px">
                <asp:RequiredFieldValidator ID="valRedMatkhau" runat="server" 
                    ControlToValidate="txtmatkhau" ErrorMessage="( Cần nhập mật khẩu )" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmatkhau" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+\w*\d+\w*">( Mật khẩu cần chứa ít nhất 1 số, 1 chữ và bắt đầu với 1 chữ )</asp:RegularExpressionValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 25px;">
                Nhập lại mật khẩu  
            </td>
            <td style="height: 25px; width: 137px;">
                <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 25px">
                <asp:RequiredFieldValidator ID="valRedNhaplai" runat="server" 
                    ControlToValidate="txtnhaplai" ErrorMessage="( Cần nhập lại mật khẩu ) " 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="valComNhaplai" runat="server" 
                    ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" Display="Dynamic" 
                    ErrorMessage="( Mật khẩu không khớp )" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 23px;" colspan="3">
                <h3><b>Thông tin cá nhân</h3></b> </td>
            </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                Họ và tên </td>
            <td style="height: 22px; width: 137px;">
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="valRedTen" runat="server" 
                    ControlToValidate="txtten" ErrorMessage="( Cần nhập họ và tên )" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 22px;">
                Ngày sinh</td>
            <td style="height: 22px; width: 137px;">
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
            <td style="height: 22px; width: 137px;">
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
            <td style="height: 22px; width: 137px;">
                <asp:TextBox ID="txtdiachi" runat="server" Height="94px" TextMode="MultiLine"></asp:TextBox>
                <br />
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="valredDiachi" runat="server" 
                    ControlToValidate="txtdiachi" ErrorMessage="( Cần nhập lại địa chỉ  )" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 32px;">
                <br />
            </td>
            <td style="height: 32px; width: 137px;">
                <asp:Button ID="Button3" runat="server" Text="Đăng ký" 
                    onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td style="height: 32px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 32px;">
                &nbsp;</td>
            <td style="height: 32px; width: 137px;">
                <asp:Label ID="lblthongbao" runat="server"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblTaikhoan] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtemail" Name="email" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblTaikhoan]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 17px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td style="height: 17px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

