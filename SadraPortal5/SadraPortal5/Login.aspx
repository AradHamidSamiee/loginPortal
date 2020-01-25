<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SadraPortal5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body style="background-image: url('pics/background12.jpg')" >
    <form id="form1" runat="server">

    <div style="border: medium dashed #5A5E61; height: 50px; background-image: url('../pics/logincadre2.png'); top: 15px; z-index: 1; left: 10px; position: absolute; width: 1387px;">
        <asp:Button ID="Button2" runat="server" Text="Sadra" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="#CCCCCC" style="z-index: 1; left: 1287px; top: 9px; position: absolute; width: 90px; height: 32px; font-size: medium; font-weight: 700;" OnClick="Button2_Click" />
        <asp:Label ID="Label2" runat="server" Text="Sadra Institution Of Higher Education" style="z-index: 1; left: 52px; top: 9px; position: absolute; color: #CCCCCC; font-weight: 700; font-size: x-large" ForeColor="#666699"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pics/refresh.png" style="z-index: 1; left: 1218px; top: 8px; position: absolute; height: 32px" OnClick="ImageButton1_Click1" />
    </div>

        <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/pics/logincadre2.png" BorderColor="#5A5E61" BorderStyle="Dashed" style="z-index: 1; left: 576px; top: 188px; position: absolute; height: 249px; width: 502px" Visible="False">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Consolas" style="z-index: 1; left: 249px; top: 43px; position: absolute; height: 155px; width: 400px; font-size: medium;" ForeColor="#CCCCCC">
                <asp:ListItem Value="0">sign up as admin</asp:ListItem>
                <asp:ListItem Value="1">sign up as student</asp:ListItem>
                <asp:ListItem Value="2">sign up as profssor</asp:ListItem>
            </asp:RadioButtonList>

            <asp:TextBox ID="TextBox3" placeholder="              ---   username   ---" runat="server" MaxLength="15" style="z-index: 1; left: 24px; top: 54px; position: absolute; width: 212px; height: 30px;"></asp:TextBox>
            <asp:TextBox ID="TextBox4" placeholder="              ---   password   ---" runat="server" style="z-index: 1; left: 23px; top: 105px; position: absolute; width: 212px; height: 30px;" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox5" placeholder="  -- retype password to confirm  --" runat="server" style="z-index: 1; left: 22px; top: 155px; position: absolute; width: 212px; height: 30px;" TextMode="Password"></asp:TextBox>
            
            <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 80px; top: 203px; position: absolute; height: 39px; width: 105px; font-size: medium; font-weight: 700; color: #003399; background-color: #FF9933;" Text="Sign Up" OnClick="Button3_Click" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:loginlistsadraConnectionString5 %>" SelectCommand="SELECT [username], [password] FROM [Students]"></asp:SqlDataSource>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords are not Equal, Please Try again" Type="String" Operator="Equal" ForeColor="Red" style="z-index: 1; left: 19px; top: 284px; position: absolute; font-size: medium; font-weight: 700" BackColor="#99FF66"></asp:CompareValidator>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/pics/sadralogo.png" style="z-index: 1; left: 444px; top: -22px; position: absolute; height: 92px" />
        </asp:Panel>

        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pics/logincadre2.png" BorderColor="#5A5E61" BorderStyle="Dashed" style="z-index: 1; left: 207px; top: 110px; position: absolute; height: 325px; width: 360px">
            <asp:Label ID="Label1" runat="server" Text="ورود به سامانه" style="z-index: 1; left: 57px; top: 70px; position: absolute; font-weight: 700; font-size: large; color: #CCCCCC" ForeColor="#CCCCCC"></asp:Label>
            <asp:TextBox ID="TextBox1" placeholder="   username ..." runat="server" style="position: absolute; z-index: 1; left: 51px; top: 127px; width: 266px; height: 30px;" BorderStyle="Outset">
            </asp:TextBox>
            <asp:TextBox ID="TextBox2" placeholder="   password ..." runat="server" style="z-index: 1; left: 50px; top: 185px; position: absolute; width: 266px; height: 30px;" TextMode="Password">
            </asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="#CCCCCC" OnCheckedChanged="CheckBox1_CheckedChanged" style="z-index: 1; left: 52px; top: 251px; position: absolute" Text=" Remember me" />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/sadralogo.png" style="z-index: 1; left: 295px; top: -22px; position: absolute; height: 100px;" />
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 214px; top: 250px; position: absolute; height: 29px; width: 93px;" Text="Login" BackColor="#FFFFCC" ForeColor="#333333" OnClick="Button1_Click" />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/account.png" style="z-index: 1; left: 284px; top: 130px; position: absolute; height: 30px" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/pics/lock2.png" style="z-index: 1; left: 284px; top: 186px; position: absolute; height: 35px" />
            <asp:Button ID="Button4" runat="server" BackColor="#070808" BorderColor="#0A0706" ForeColor="#CCCCCC" OnClick="Button4_Click" style="z-index: 1; left: 10px; top: 291px; position: absolute; width: 340px" Text="don'y have account yet? Sign Up NOW" />
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 100px; top: 438px; position: absolute; height: 192px; width: 467px" BackColor="#669999" BackImageUrl="~/pics/logincadre2.png" BorderColor="#5A5E61" BorderStyle="Dashed">
            <asp:Label ID="Label3" runat="server" ForeColor="#F7BE4D" style="z-index: 1; left: 290px; top: 13px; position: absolute; font-size: x-large; font-weight: 700; text-decoration: underline;" Text="نکات قابل توجه"></asp:Label>
            <asp:Label ID="Label4" runat="server" ForeColor="Aqua" style="z-index: 1; left: 161px; top: 69px; position: absolute; font-weight: 700; font-size: large; background-color: #2A3E3E;" Text="تغییر کلمه عبور در فواصل زمانی ." BackColor="#669999"></asp:Label>
            <asp:Label ID="Label5" runat="server" ForeColor="Aqua" style="z-index: 1; left: 90px; top: 112px; position: absolute; font-size: large; font-weight: 700; background-color: #2A3E3E;" Text="عدم استفاده از رمز های ساده و قابل حدس ." BackColor="#669999"></asp:Label>
            <asp:Label ID="Label6" runat="server" ForeColor="Aqua" style="z-index: 1; left: 2px; top: 152px; position: absolute; font-weight: 700; font-size: large; background-color: #2A3E3E;" Text="استفاده از ترکیب حروف کوچک و بزرگ در کلمه عبور ." BackColor="#669999"></asp:Label>
        </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginlistsadraConnectionString2 %>" SelectCommand="SELECT * FROM [Admins]" InsertCommand="INSERT INTO Students(Id, username, password) VALUES (@id, @username, @password)"></asp:SqlDataSource>

    </form>
    </body>
</html>
