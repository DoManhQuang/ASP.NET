<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Suathongtintaikhoan.aspx.cs" Inherits="Suathongtintaikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="padding-left:100px">            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sửa thông tin tài khoản </h2>
            <br />
          <div style="padding-left:130px">  <fieldset style="width:400px">
            <br />
            <asp:FormView ID="FormView1" runat="server" 
                DataKeyNames="MaTK" DataSourceID="SqlDataSource3" Width="507px" 
                onitemupdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td colspan="2">
                               <h3><b>Thông tin đăng nhập</b></h3></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 30px; width: 78px;">
                                Mã tài khoản
                            </td>
                            <td style="height: 30px">
                                <asp:Label ID="MaTKLabel1" runat="server" Text='<%# Eval("MaTK") %>' />
                            </td>
                            <td style="height: 30px">
                                </td>
                        </tr>
                        <tr>
                            <td style="height: 30px; width: 78px;">
                                Email
                            </td>
                            <td style="height: 30px">
                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' 
                                    Height="25px" Width="160px" />
                            </td>
                            <td style="height: 30px">
                                <asp:RequiredFieldValidator ID="valRedEmail" runat="server" 
                                    ControlToValidate="emailTextBox" Display="Dynamic" 
                                    ErrorMessage="( Cần nhập địa chỉ Email )" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="valExpEmail" runat="server" 
                                    ControlToValidate="emailTextBox" Display="Dynamic" 
                                    ErrorMessage="( Email không hợp lệ )" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 78px; ">
                                Mật khẩu
                            </td>
                            <td>
                                <asp:TextBox ID="MatkhauTextBox" runat="server" Text='<%# Bind("Matkhau") %>' 
                                    Height="25px" Width="160px" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="valRedMatkhau" runat="server" 
                                    ControlToValidate="MatkhauTextBox" Display="Dynamic" 
                                    ErrorMessage="( Cần nhập mật khẩu )" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="MatkhauTextBox" Display="Dynamic" 
                                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                                    ValidationExpression="[a-zA-Z]+\w*\d+\w*">( Mật khẩu cần chứa ít nhất 1 số, 1 chữ và bắt đầu với 1 chữ )</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h3>&nbsp;</h3></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h3>
                                    <b>Thông tin đăng nhập</b></h3>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 34px; width: 78px;">
                                Họ tên
                            </td>
                            <td style="height: 34px">
                                <asp:TextBox ID="HotenTextBox" runat="server" Text='<%# Bind("Hoten") %>' 
                                    Height="25px" Width="161px" />
                            </td>
                            <td style="height: 34px">
                                <asp:RequiredFieldValidator ID="valRedTen" runat="server" 
                                    ControlToValidate="HotenTextBox" ErrorMessage="( Cần nhập họ và tên )" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 34px; width: 78px;">
                                Ngày sinh
                            </td>
                            <td style="height: 34px">
                                <asp:TextBox ID="NgaysinhTextBox" runat="server" 
                                    Text='<%# Bind("Ngaysinh") %>' Height="25px" Width="160px" />
                            </td>
                            <td style="height: 34px">
                                <asp:RequiredFieldValidator ID="valRedTen0" runat="server" 
                                    ControlToValidate="HotenTextBox" ErrorMessage="( Cần nhập ngày sinh)" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px; width: 78px;">
                                Số điện thoại
                            </td>
                            <td style="height: 35px">
                                <asp:TextBox ID="SodienthoaiTextBox" runat="server" 
                                    Text='<%# Bind("Sodienthoai") %>' Height="28px" Width="160px" />
                            </td>
                            <td style="height: 35px">
                                <asp:RequiredFieldValidator ID="valRedSodienthoai" runat="server" 
                                    ControlToValidate="SodienthoaiTextBox" Display="Dynamic" 
                                    ErrorMessage="( Cần nhập số diện thoại )" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 78px;">
                                Địa chỉ
                            </td>
                            <td>
                                <asp:TextBox ID="DiachiTextBox" runat="server" style="margin-bottom: 0px" 
                                    Text='<%# Bind("Diachi") %>' Height="45px" Width="162px" 
                                    TextMode="MultiLine" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="valredDiachi" runat="server" 
                                    ControlToValidate="DiachiTextBox" ErrorMessage="( Cần nhập địa chỉ  )" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Cập nhật " />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ " />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Hoten:
                    <asp:TextBox ID="HotenTextBox" runat="server" Text='<%# Bind("Hoten") %>' />
                    <br />
                    Ngaysinh:
                    <asp:TextBox ID="NgaysinhTextBox" runat="server" 
                        Text='<%# Bind("Ngaysinh") %>' />
                    <br />
                    Diachi:
                    <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                    <br />
                    Sodienthoai:
                    <asp:TextBox ID="SodienthoaiTextBox" runat="server" 
                        Text='<%# Bind("Sodienthoai") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    Matkhau:
                    <asp:TextBox ID="MatkhauTextBox" runat="server" Text='<%# Bind("Matkhau") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td colspan="2" style="height: 25px">
                                <b>THÔNG TIN ĐĂNG NHẬP </b>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 25px; width: 96px;">
                                Mã tài khoản
                            </td>
                            <td style="height: 25px; width: 274px;">
                                <asp:Label ID="MaTKLabel" runat="server" Text='<%# Eval("MaTK") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 25px; width: 96px;">
                                Email
                            </td>
                            <td style="height: 25px; width: 274px;">
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 96px; height: 25px;">
                                Mật khẩu
                            </td>
                            <td class="nhantinkhuyenmai" style="height: 25px; width: 274px">
                                <asp:Label ID="MatkhauLabel" runat="server" Text='***************' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 96px; height: 25px;">
                                &nbsp;</td>
                            <td class="nhantinkhuyenmai" style="height: 25px; width: 274px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 24px">
                              <b>THÔNG TIN CÁ NHÂN </b>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 25px; width: 96px;">
                                Họ tên
                            </td>
                            <td style="height: 25px; width: 274px;">
                                <asp:Label ID="HotenLabel" runat="server" Text='<%# Bind("Hoten") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 25px; width: 96px;">
                                Ngày sinh
                            </td>
                            <td style="height: 25px; width: 274px;">
                                <asp:Label ID="NgaysinhLabel" runat="server" Text='<%# Bind("Ngaysinh") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 25px; width: 96px;">
                                Số điện thoại&nbsp;
                            </td>
                            <td style="height: 25px; width: 274px;">
                                
                                <asp:Label ID="SodienthoaiLabel" runat="server" 
                                    Text='<%# Bind("Sodienthoai") %>' />
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 96px">
                                Địa chỉ
                            </td>
                            <td class="nhantinkhuyenmai" style="width: 274px">
                                <asp:Label ID="DiachiLabel" runat="server" Text='<%# Bind("Diachi") %>' />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Sửa " />
                    &nbsp;&nbsp;
                </ItemTemplate>
            </asp:FormView>
            <br />

              <asp:Label ID="lblthongbao" runat="server"></asp:Label>

            </fieldset></div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>" 
                    SelectCommand="SELECT [MaTK], [Hoten], [Ngaysinh], [Diachi], [Sodienthoai], [email], [Matkhau] FROM [tblTaikhoan] WHERE (([email] = @email) AND ([Matkhau] = @Matkhau))" 
                    DeleteCommand="DELETE FROM [tblTaikhoan] WHERE [MaTK] = @MaTK" 
                    InsertCommand="INSERT INTO [tblTaikhoan] ([Hoten], [Ngaysinh], [Diachi], [Sodienthoai], [email], [Matkhau]) VALUES (@Hoten, @Ngaysinh, @Diachi, @Sodienthoai, @email, @Matkhau)" 
                    
                    UpdateCommand="UPDATE [tblTaikhoan] SET [Hoten] = @Hoten, [Ngaysinh] = @Ngaysinh, [Diachi] = @Diachi, [Sodienthoai] = @Sodienthoai, [email] = @email, [Matkhau] = @Matkhau WHERE [MaTK] = @MaTK" 
                    onselecting="SqlDataSource2_Selecting">
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
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="userName" Type="String" />
                        <asp:SessionParameter Name="Matkhau" SessionField="userPass" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Hoten" Type="String" />
                        <asp:Parameter DbType="Date" Name="Ngaysinh" />
                        <asp:Parameter Name="Diachi" Type="String" />
                        <asp:Parameter Name="Sodienthoai" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Matkhau" Type="String" />
                        <asp:Parameter Name="MaTK" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
</asp:Content>

