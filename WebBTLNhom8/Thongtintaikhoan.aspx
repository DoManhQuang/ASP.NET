<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage01.master" AutoEventWireup="true" CodeFile="Thongtintaikhoan.aspx.cs" Inherits="Thongtintaikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thông tin đăng ký</b></h1>
<p>&nbsp;</p>
       
       <div style="padding-left:133px">  <fieldset style="width:407px">   <table style="width: 100%" >
    <tr  >
    <td bgcolor="#cccccc" colspan="2" style="height: 19px" >  <b>  THÔNG TIN ĐĂNG NHẬP </b></td></</tr>
    </tr>
        <tr>
            <td style="width: 129px; height: 28px;">
             
               Email 
            </td>
            <td style="height: 28px; ">
                <asp:TextBox ID="txtemail" runat="server" Width="180px" Height="20px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td  bgcolor="#cccccc" colspan="2" style="height: 19px" >
               <b> THÔNG TIN CÁ NHÂN </b> </td>
            </tr>
        <tr >
            <td style="width: 129px; height: 25px;">
                <asp:Label ID="lblten" runat="server" Text="Họ và tên "></asp:Label>
            </td>
            <td style="height: 25px; ">
                <asp:TextBox ID="txtten" runat="server" Width="180px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 27px;">
                <asp:Label ID="lblNgaysinh" runat="server" Text="Ngày sinh"></asp:Label>
            </td>
            <td style="height: 27px; ">
                <asp:TextBox ID="txtNgaysinh" runat="server" Width="180px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 26px;">
                <asp:Label ID="lblSodienthoai" runat="server" Text="Số điện thoại "></asp:Label>
            </td>
            <td style="height: 26px; ">
                <asp:TextBox ID="txtsodienthoai" runat="server" Width="180px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 51px;">
                <asp:Label ID="lbldiachi" runat="server" Text="Địa chỉ "></asp:Label>
            </td>
            <td style="height: 51px; ">
                <asp:TextBox ID="txtdiachi" runat="server" Height="60px" TextMode="MultiLine" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 32px;" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BTLCSDLWEBConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblTaikhoan]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table> </fieldset></div>
</asp:Content>

