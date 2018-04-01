<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="fwappc02.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Labelコントロールの表示テキスト"></asp:Label>
        </div>
        <asp:Literal ID="Literal1" runat="server" Text="リテラルコントロールの表示テキスト"></asp:Literal>
        <p><asp:Image ID="Image1" runat="server" AlternateText="代替テキスト" Height="100px" ImageAlign="Middle" ImageUrl="https://4.bp.blogspot.com/-cFsd5_4GDYI/UrEhhuJbbRI/AAAAAAAAb5Y/KL-WQikR7bk/s800/food_tonjiru.png" Width="100px" /></p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="クリックしてください" />
        </p>
    </form>
</body>
</html>
