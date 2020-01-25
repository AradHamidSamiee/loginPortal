<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Professors.aspx.cs" Inherits="SadraPortal5.Professors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('pics/patternback.jpg')">
    <form id="form1" runat="server">

        <asp:Panel ID="Panel5" runat="server" style="height: 50px; background-image: url('../pics/logincadre2.png'); top: 15px; z-index: 1; left: 10px; position: absolute; width: 1387px;">
            <asp:Button ID="Button2" runat="server" Text="Log Out" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="#CCCCCC" style="z-index: 1; left: 1287px; top: 10px; position: absolute; width: 90px; height: 32px; font-size: large; font-weight: 700;" OnClick="Button2_Click" />
            <asp:Label ID="Label2" runat="server" Text="Sadra Institution Of Higher Education" style="z-index: 1; left: 52px; top: 9px; position: absolute; color: #CCCCCC; font-weight: 700; font-size: x-large" ForeColor="#666699"></asp:Label>
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/pics/refresh.png" style="z-index: 1; left: 1218px; top: 8px; position: absolute; height: 32px" />
            <asp:Label ID="Label3" runat="server" ForeColor="Silver" style="z-index: 1; left: 1055px; top: 9px; position: absolute; font-size: medium; font-weight: 700" Text="Label"></asp:Label>
        </asp:Panel>

    <div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pics/logincadre2.png" style="z-index: 1; left: 36px; top: 90px; position: absolute; height: 601px; width: 240px">
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 38px; top: 36px; position: absolute; height: 36px; width: 158px; font-size: medium; font-weight: 700; color: #66CCFF; background-color: #671425;" Text="وارد کردن نمرات" OnClick="Button1_Click" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="z-index: 1; left: 6px; top: 228px; position: absolute; height: 152px; width: 232px; color: #C0C0C0; font-weight: 700; font-size: medium">
                <Columns>
                    <asp:BoundField DataField="eval" HeaderText="eval" SortExpression="eval" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:loginlistsadraConnectionString11 %>" SelectCommand="SELECT [eval], [username] FROM [Professors]"></asp:SqlDataSource>
            <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: medium; color: #C0C0C0; z-index: 1; left: 54px; top: 186px; position: absolute" Text="نمره ارزشیابی"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/pics/logincadre2.png" style="z-index: 1; left: 293px; top: 91px; position: absolute; height: 600px; width: 1017px" Visible="False">
            <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 207px; top: 29px; position: absolute; width: 174px; height: 37px;" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username">
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" ForeColor="Silver" style="z-index: 1; left: 8px; top: 37px; position: absolute" Text="انتخاب دانشجوی مورد نظر"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginlistsadraConnectionString8 %>" SelectCommand="SELECT [Score], [username] FROM [Students]"></asp:SqlDataSource>
            <asp:TextBox ID="TextBox1" placeholder="student score" runat="server" style="z-index: 1; left: 210px; top: 108px; position: absolute"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="وارد کردن" OnClick="Button3_Click" style="font-size: medium; font-weight: 700; z-index: 1; left: 234px; top: 159px; position: absolute" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" style="z-index: 1; left: 459px; top: 28px; position: absolute; height: 152px; width: 136px; color: #C0C0C0; font-weight: 700;">
                <Columns>
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </form>
</body>
</html>
