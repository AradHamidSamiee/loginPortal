<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvaluatingTeachers.aspx.cs" Inherits="SadraPortal5.EvaluatingTeachers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('pics/patternback.jpg'); z-index: 1; left: 130px; top: 53px; position: absolute; height: 357px; width: 1180px;">
    <form id="form1" runat="server">
    <div style="z-index: 1; left: 1px; top: 0px; position: absolute; height: 355px; width: 856px; background-image: url('pics/bluebacktrans.png');">
    
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="z-index: 1; left: 132px; top: 43px; position: absolute; height: 116px; width: 136px; color: #FFFF99; font-weight: 700">
            <asp:ListItem Value="20">Excelent</asp:ListItem>
            <asp:ListItem Value="17.5">Good</asp:ListItem>
            <asp:ListItem Value="15">Not Bad</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #FFFF66; font-size: medium; z-index: 1; left: 298px; top: 51px; position: absolute" Text="میزان استفاده از متد ها و امکانات آموزشی به شیوه کارآمد و مفید توسط استاد"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: medium; color: #FFFF66; z-index: 1; left: 640px; top: 183px; position: absolute" Text="... سوالات مشابه دیگر"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 354px; top: 302px; position: absolute; color: #FFFF66; font-weight: 700; font-size: medium; background-color: #115A94" Text="ثبت نظرات" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginlistsadraConnectionString10 %>" SelectCommand="SELECT [eval], [username] FROM [Professors]"></asp:SqlDataSource>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username" style="z-index: 1; left: 1038px; top: 84px; position: absolute">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; top: 48px; position: absolute; font-weight: 700; font-size: medium; color: #C0C0C0; left: 1011px" Text="انتخاب استاد مورد نظر"></asp:Label>
    </form>
</body>
</html>
