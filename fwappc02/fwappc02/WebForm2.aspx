<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="fwappc02.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>single line : <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></p>
        <p>multiple lines : <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></p>
        <p>password : <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></p>
        <p>date : <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox></p>

        <div><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></div>
    </form>
</body>
</html>
