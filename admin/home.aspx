<%@ Page Language="vb" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="prac.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="bid" DataSourceID="SqlDataSource1" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="bid" HeaderText="bid" InsertVisible="False" ReadOnly="True" SortExpression="bid" />
        <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
        <asp:BoundField DataField="bprice" HeaderText="bprice" SortExpression="bprice" />
        <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookConnectionString %>" DeleteCommand="DELETE FROM bookmst WHERE (bid = @bid)" SelectCommand="SELECT * FROM [bookmst]" UpdateCommand="UPDATE bookmst SET bname = @bname, bprice = @bprice, author = @author WHERE (bid = @bid)">
    <DeleteParameters>
        <asp:Parameter Name="bid" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="bname" />
        <asp:Parameter Name="bprice" />
        <asp:Parameter Name="author" />
        <asp:Parameter Name="bid" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<table class="auto-style1">
    <tr>
        <td class="auto-style7">Book Name</td>
        <td class="auto-style8">Price</td>
        <td class="auto-style9">Author</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:TextBox ID="bname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="bprice" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="author" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Insert" />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style7 {
        width: 149px;
    }
    .auto-style8 {
        width: 97px;
    }
    .auto-style9 {
        width: 127px;
    }
</style>
</asp:Content>

