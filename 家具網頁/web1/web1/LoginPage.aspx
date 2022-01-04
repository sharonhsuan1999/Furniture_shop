<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebProject.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 271px;
        }
        .auto-style2 {
            font-size: xx-large;
            font-family: "Lucida Calligraphy";
            color: #663300;
        }
        .auto-style3 {
            width: 100%;
            height: 236px;
        }
        .auto-style4 {
            font-size: medium;
            margin-top: 0px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style8 {
            font-size: large;
            font-family: 微軟正黑體;
            color: #FFFFFF;
            background-color: #663300;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style13 {
            text-align: left;
            height: 33px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style16 {
            text-align: center;
            height: 44px;
        }
        .auto-style17 {
            width: 22%;
        }
        .auto-style18 {
            height: 94px;
        }
        .auto-style19 {
            text-align: center;
            height: 94px;
        }
    </style>
</head>
<body style="background-image: url('背景圖.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <span class="auto-style2">Login</span></div>
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <table align="center" class="auto-style17">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="LB_Account" runat="server" CssClass="auto-style7" Text="帳號"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:TextBox ID="TB_AccountInout" runat="server" CssClass="auto-style11" EnableTheming="True" Height="40px" ToolTip="請輸入帳號" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19">&nbsp;<table align="center" class="auto-style17">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="LB_Password" runat="server" CssClass="auto-style7" Text="密碼"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td aria-valuetext="帳號" class="auto-style10">
                            <asp:TextBox ID="TB_PasswordInput" runat="server" CssClass="auto-style4" Height="40px" TextMode="Password" ToolTip="請輸入密碼" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <table align="center" class="auto-style17">
                        <tr>
                            <td>
                                <asp:Button ID="BT_Register" runat="server" CssClass="auto-style8" Height="40px" Text="   註冊   " Width="175px" BorderStyle="None" OnClick="BT_Register_Click" PostBackUrl="~/RegisterPage.aspx" />
                            </td>
                            <td>
                                <asp:Button ID="BT_Login" runat="server" CssClass="auto-style8" Height="40px" Text="   登入   " Width="175px" BorderStyle="None" OnClick="BT_Login_Click" OnCommand="BT_Login_Command" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="UserSqlData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_account, user_password, user_id FROM UserTable WHERE (user_account = @user_account) AND (user_password = @user_password)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TB_AccountInout" Name="user_account" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_PasswordInput" Name="user_password" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="UserDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="UserSqlData" Height="50px" Width="125px" DataKeyNames="user_id">
            <Fields>
                <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_account" HeaderText="user_account" SortExpression="user_account" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
