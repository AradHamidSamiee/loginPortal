<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SadraPortal5.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('pics/shrug-emoji-1.jpg')">
    <form id="form1" runat="server">

        <asp:Panel ID="Panel5" runat="server" style="height: 50px; background-image: url('../pics/logincadre2.png'); top: 15px; z-index: 1; left: 10px; position: absolute; width: 1387px;">
            <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="#CCCCCC" style="z-index: 1; left: 1287px; top: 10px; position: absolute; width: 90px; height: 32px; font-size: large; font-weight: 700;" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server" Text="Sadra Institution Of Higher Education" style="z-index: 1; left: 52px; top: 9px; position: absolute; color: #CCCCCC; font-weight: 700; font-size: x-large" ForeColor="#666699"></asp:Label>
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/pics/refresh.png" style="z-index: 1; left: 1218px; top: 8px; position: absolute; height: 32px" />
            <asp:Label ID="Label3" runat="server" ForeColor="Silver" style="z-index: 1; left: 1055px; top: 9px; position: absolute; font-size: medium; font-weight: 700" Text="Label"></asp:Label>
        </asp:Panel>

    <div>
    
    </div>
    </form>
</body>
</html>
