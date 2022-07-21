<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
            Lab 2 - Charlie
        </title>
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

    </head>
<body>
    <form id="form1" runat="server">

        <div class="m">
            <div class="top">
                <h1 style="text-align: center">Temperature Converter</h1>
                <p>
                    Fahrenheit:&nbsp;
                    <asp:TextBox runat="server" ID="fa"/>
                </p>
                <p>
                    Centigrade:&nbsp;
                    <asp:TextBox runat="server" ID="ce"/>
                </p>
                <p>
                    <asp:Label runat="server" ID="err" style="color:Red;background-color:White;"></asp:Label>
                </p>
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
