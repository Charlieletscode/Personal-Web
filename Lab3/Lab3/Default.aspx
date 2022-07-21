<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find Anagrams
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
                <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 290px; padding: 10px">

            <h1 style="text-align: center">Find Anagrams</h1>

            <br>
            Enter a character string:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="71px"></asp:TextBox>
                    <br><br>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text =" Eliminate Duplicates"/>
            <br>
            <p style="text-align: center">
                <asp:ListBox ID="ListBox1" runat="server" Rows="4" style="height:85px;width:150px;"></asp:ListBox>
&nbsp;</p>
            <br>
            <p style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="Find Anagrams" OnClick="Button1_Click" />
            </p>
            <asp:Label runat="server" ID="co"></asp:Label>

        </div>

    </form>

</body>
</html>
