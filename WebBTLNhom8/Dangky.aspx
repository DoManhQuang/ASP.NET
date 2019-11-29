<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            Đăng ký thành viên &nbsp;</h1>
    <br />
    <fieldset>
        <br />
        <table style="width: 98%">
            <tr>
                <td style="height: 15px;" colspan="3" bgcolor="#cccccc"><b>THÔNG TIN ĐĂNG NHẬP </b></td>
            </tr>
            <tr>
                <td style="width: 129px; height: 29px;">Họ và tên</td>
                <td style="height: 29px; width: 137px;">
                    <asp:TextBox ID="txtten" runat="server" Width="180px" Height="20px"></asp:TextBox>
                </td>
                <td style="height: 29px; width: 326px;">
                    <asp:RequiredFieldValidator ID="valRedTen" runat="server"
                        ControlToValidate="txtten" ErrorMessage="( Cần nhập họ và tên )"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 25px;">&nbsp;Số điện thoại
            </td>
                <td style="height: 25px; width: 137px;">
                    <asp:TextBox ID="txtsodienthoai" runat="server" Width="180px" Height="20px"></asp:TextBox>
                </td>
                <td style="height: 25px; width: 326px;">
                    <asp:RequiredFieldValidator ID="valRedSodienthoai" runat="server"
                        ControlToValidate="txtsodienthoai" ErrorMessage="( Cần nhập số diện thoại )"
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                        runat="server" ControlToValidate="txtsodienthoai" Display="Dynamic"
                        ErrorMessage="( Vui lòng nhập lại số điện thoại )" ForeColor="Red"
                        ValidationExpression="\d{10,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 134px;">&nbsp;Ngày sinh</td>
                <td style="height: 134px; width: 137px;">
                    <asp:Calendar ID="Calendar1" runat="server" Height="98px" Width="185px"></asp:Calendar>
                </td>
                <td style="height: 134px; width: 326px;"></td>
            </tr>
            <tr>
                <td style="width: 129px; height: 88px;">Địa chỉ  
            </td>
                <td style="height: 88px; width: 137px;">
                    <asp:TextBox ID="txtdiachi" runat="server" Height="72px" TextMode="MultiLine"
                        Width="185px"></asp:TextBox>
                </td>
                <td style="height: 88px; width: 326px;">
                    <asp:RequiredFieldValidator ID="valredDiachi" runat="server"
                        ControlToValidate="txtdiachi" ErrorMessage="( Cần nhập lại địa chỉ  )"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#cccccc" style="height: 19px;" colspan="3">
                    <b>THÔNG TIN CÁ NHÂN </b></td>
            </tr>
            <tr>
                <td style="width: 129px; height: 33px;">&nbsp;<asp:Label
                    ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    &nbsp;</td>
                <td style="height: 33px; width: 137px;">
                    <asp:TextBox ID="txtemail" runat="server" Height="20px" Width="180px"></asp:TextBox>
                </td>
                <td style="height: 33px; width: 326px;">
                    <asp:RequiredFieldValidator ID="valRedEmail" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="( Cần nhập địa chỉ Email )"
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valExpEmail" runat="server"
                        ControlToValidate="txtemail" Display="Dynamic"
                        ErrorMessage="( Email không hợp lệ )" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 22px;">Mật khẩu </td>
                <td style="height: 22px; width: 137px;">
                    <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Height="20px"
                        Width="180px" OnTextChanged="txtmatkhau_TextChanged"></asp:TextBox>
                    <p></p>
                </td>
                <td style="height: 22px; width: 326px;">
                    <asp:RequiredFieldValidator ID="valRedMatkhau" runat="server"
                        ControlToValidate="txtmatkhau" ErrorMessage="( Cần nhập mật khẩu )"
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtmatkhau" Display="Dynamic"
                        ErrorMessage="RegularExpressionValidator" ForeColor="Red"
                        ValidationExpression="[a-zA-Z]+\w*\d+\w*">( Mật khẩu cần chứa ít nhất 1 số, 1 chữ và bắt đầu với 1 chữ )</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 22px;">Nhập lại mật khẩu&nbsp; </td>
                <td style="height: 22px; width: 137px;">
                    <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password" Width="180px"
                        Height="20px"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 22px; width: 326px;">
                    <asp:RequiredFieldValidator ID="valRedNhaplai" runat="server"
                        ControlToValidate="txtnhaplai" ErrorMessage="( Cần nhập lại mật khẩu ) "
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="valComNhaplai" runat="server"
                        ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" Display="Dynamic"
                        ErrorMessage="( Mật khẩu không khớp )" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 32px;">
                    <br />
                </td>
                <td style="height: 32px; width: 137px;">
                    <asp:Button ID="Button3" runat="server" Text="Đăng ký"
                        OnClick="Button3_Click" Height="30px" Width="107px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                    <br />
                </td>
                <td style="height: 32px; width: 326px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 129px; height: 32px;">
                    <asp:SqlDataSource ID="sqlDangky" runat="server"
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
                <td style="height: 32px; width: 137px;">
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
                <td style="height: 32px; width: 326px;">
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
                <td style="height: 17px; width: 326px;">&nbsp;</td>
            </tr>
        </table>
    </fieldset>
</asp:Content>

