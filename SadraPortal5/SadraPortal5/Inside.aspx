<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inside.aspx.cs" Inherits="SadraPortal5.Webforms.Inside" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <style type="text/css">
        #form1 {
            direction: ltr;
        }
    </style>
</head>
<body style="background-image:url('pics/librarybackdark.png'); background-repeat:no-repeat">
    <form id="form1" runat="server">

        <asp:Panel ID="Panel5" runat="server" style="height: 50px; background-image: url('../pics/logincadre2.png'); top: 15px; z-index: 1; left: 10px; position: absolute; width: 1387px;">
            <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="#CCCCCC" style="z-index: 1; left: 1287px; top: 10px; position: absolute; width: 90px; height: 32px; font-size: large; font-weight: 700;" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server" Text="Sadra Institution Of Higher Education" style="z-index: 1; left: 52px; top: 9px; position: absolute; color: #CCCCCC; font-weight: 700; font-size: x-large" ForeColor="#666699"></asp:Label>
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/pics/refresh.png" style="z-index: 1; left: 1218px; top: 8px; position: absolute; height: 32px" />
            <asp:Label ID="Label3" runat="server" ForeColor="Silver" style="z-index: 1; left: 1055px; top: 9px; position: absolute; font-size: medium; font-weight: 700" Text="Label"></asp:Label>
        </asp:Panel>

    <div style="background-image: url('pics/logincadre2.png'); height: 506px; width: 1302px; z-index: 1; left: 95px; top: 80px; position: absolute;">

        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/pics(forbuttons)/options.jpg" style="z-index: 1; left: 1068px; top: 15px; position: absolute; height: 473px" OnClick="ButtonImage3_Click" />

        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pics/bluebacktrans.png" style="z-index: 1; left: 16px; top: 16px; position: absolute; height: 474px; width: 1036px" Visible="False">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pics(forbuttons)/cartable.jpg" style="z-index: 1; left: 788px; top: 15px; position: absolute; height: 82px; width: 232px" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pics(forbuttons)/passchange.jpg" style="z-index: 1; left: 541px; top: 16px; position: absolute; height: 82px; width: 232px" />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pics(forbuttons)/requestform.jpg" style="z-index: 1; left: 294px; top: 17px; position: absolute; height: 82px; width: 232px" OnClick="ButtonImage3_Click" />
        </asp:Panel>
        
        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 16px; top: 16px; position: absolute; height: 474px; width: 1036px" Visible="False" BackImageUrl="~/pics/bluebacktrans.png">
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-53-29-601.jpg" style="z-index: 1; left: 788px; top: 15px; position: absolute; height: 82px; width: 232px" OnClick="ImageButton6_Click" />
            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-53-40-673.jpg" style="z-index: 1; left: 541px; top: 16px; position: absolute; height: 82px; width: 232px" />
            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-53-48-417.jpg" style="z-index: 1; left: 294px; top: 17px; position: absolute; height: 82px; width: 232px" />
            <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-53-58-955.jpg" style="z-index: 1; position: absolute; height: 82px; width: 232px; top: 115px; left: 788px;" OnClick="ImageButton9_Click" />
            <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-54-04-623.jpg" style="z-index: 1; left: 541px; position: absolute; height: 82px; width: 232px; top: 115px;" OnClick="ImageButton10_Click" />
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-54-10-018.jpg" style="z-index: 1; left: 294px; position: absolute; height: 82px; width: 232px; top: 115px;" />
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 13-54-24-455.jpg" style="z-index: 1; position: absolute; height: 82px; width: 232px; top: 215px; left: 788px;" OnClick="ImageButton12_Click" />
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 16px; top: 16px; position: absolute; height: 474px; width: 1036px" Visible="False" BackImageUrl="~/pics/bluebacktrans.png">
            <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 14-07-49-561.jpg" style="z-index: 1; left: 788px; top: 15px; position: absolute; height: 82px; width: 232px" />
            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 14-07-53-948.jpg" style="z-index: 1; left: 541px; top: 16px; position: absolute; height: 82px; width: 232px" />
            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/pics/bandicam 2018-12-10 14-07-57-469.jpg" style="z-index: 1; left: 294px; top: 17px; position: absolute; height: 82px; width: 232px" />
        </asp:Panel>

        <asp:Panel ID="Panel4" runat="server" style="z-index: 1; left: 16px; top: 16px; position: absolute; height: 474px; width: 1036px" Visible="False" BackImageUrl="~/pics/UI-404-Pagetest.jpg">

        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
