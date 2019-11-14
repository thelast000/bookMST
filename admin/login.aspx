<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/Site1.Master" CodeBehind="login.aspx.vb" Inherits="prac.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 118px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style7">Unsername:</td>
        <td>
            <asp:TextBox ID="userid" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Password:</td>
        <td>
            <asp:TextBox ID="upass" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">User Type:</td>
        <td>
            <asp:RadioButtonList ID="utype" runat="server" Height="57px" Width="88px">
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Login" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            <asp:Label ID="errmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
