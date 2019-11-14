<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user/Site2.Master" CodeBehind="index.aspx.vb" Inherits="prac.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 506px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="authorDS" DataTextField="author" DataValueField="author">
                <asp:ListItem Selected="True" Value="0">All</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="authorDS" runat="server" ConnectionString="<%$ ConnectionStrings:bookConnectionString %>" SelectCommand="SELECT DISTINCT [author] FROM [bookmst]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            -
            <asp:Button ID="Button4" runat="server" Text="Clear" />
        </td>
        <td>
            <asp:TextBox ID="min" runat="server" Width="87px"></asp:TextBox>
            <asp:TextBox ID="max" runat="server" Width="96px"></asp:TextBox>
            -
            <asp:Button ID="Button2" runat="server" Text="Search" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="bid" HeaderText="bid" InsertVisible="False" ReadOnly="True" SortExpression="bid" />
                    <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
                    <asp:BoundField DataField="bprice" HeaderText="bprice" SortExpression="bprice" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [bookmst]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="1">Highest to Lowest</asp:ListItem>
                <asp:ListItem Value="0">Lowest To Highest</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button3" runat="server" Text="Search" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
