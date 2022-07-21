<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 4 - Charlie</title>
</head>
    
        <style type="text/css">
        /*    table {
                width: 100%;
                border: 1px solid;
            }
        */    .m {
                border-width: thin;
                border-style: solid;
                margin: auto;
                width: 400px;
                background-color: #C0C0C0;
            }
            .bot {
                border-width: thin;
                padding: 20px;
                background-color: #FFFFFF;
                border-top-style: solid;
                text-align: center;
            }
            .top {
                padding: 50px;
                height: 191px;
            }
        </style>
<body>
    <form id="form2" runat="server">

        <div class="m">
            <div class="top">
                <h1 style="text-align: center">Unit Converter</h1>
                <p>
                    From:&nbsp;
                    <asp:TextBox runat="server" ID="fa" Width="144px"/>
            <asp:DropDownList ID="d1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Factor">
            </asp:DropDownList>
            
                </p>
                <p>
                    To:&nbsp;
                    <asp:TextBox runat="server" ID="ce" Width="144px"/>
                    <asp:DropDownList ID="d2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Factor">
            </asp:DropDownList>
                </p>
                <p>
                    <asp:Label runat="server" ID="err" style="color:Red;background-color:White;"></asp:Label>
                </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Conversions]"></asp:SqlDataSource>
            </div>
            <div class="bot">
                <asp:Button ID="submit" runat="server" Text="Clear" OnClick="Page_Load1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="convert" runat="server" Text="Convert" OnClick="Page_Load2" />
            </div>
        </div>
    </form>

</body>
</html>

