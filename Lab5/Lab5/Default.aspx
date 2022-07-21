<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab5 </title>
</head>
    <body>
        <form id="form1" runat="server">
        <div style="border-width: thin; border-style: solid; width: 380px; height: 364px; background-color: #FFFF00; padding: 30px;">
<h1>Lab 5</h1>            
            &nbsp;
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:ListBox>
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" />
            <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server"></asp:Label>
            <br>
            <br>
            <br>
            <br>
            <asp:Button ID="Button3" runat="server" Text="View Cart" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Empty Cart" OnClick="Button4_Click" />
            
            <br>
            <asp:BulletedList ID="BulletedList1" runat="server" Visible="False">
            </asp:BulletedList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [Table]"></asp:SqlDataSource>
            
        </div>
        </form>


</body>
</html>
