<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="WebProject.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 132px;
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            font-family: "Lucida Calligraphy";
            color: #663300;
        }
        .auto-style3 {
            width: 100%;
            height: 387px;
        }
        .auto-style4 {
            width: 22%;
        }
        .auto-style5 {
            height: 96px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            font-size: large;
            font-family: 微軟正黑體;
            color: #000000;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            height: 86px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            font-size: large;
            font-family: 微軟正黑體;
            color: #FFFFFF;
            background-color: #663300;
        }
        .auto-style12 {
            height: 31px;
        }
        .auto-style13 {
            text-align: center;
            height: 31px;
        }
        .auto-style14 {
            text-decoration: none;
            color: #663300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            <br />
            <span class="auto-style2">Register</span></div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style5">
                    <table align="center" class="auto-style4">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="LB_UserName" runat="server" CssClass="auto-style7" Text="用戶名"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TB_UserNameInput" runat="server" CssClass="auto-style8" Height="40px" Width="380px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <table align="center" class="auto-style4">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="LB_Phone" runat="server" CssClass="auto-style7" Text="電話"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TB_PhoneInput" runat="server" CssClass="auto-style8" Height="40px" Width="380px" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style9">
                    <table align="center" class="auto-style4">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="LB_Account" runat="server" CssClass="auto-style7" Text="帳號"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TB_AccountInput" runat="server" CssClass="auto-style8" Height="40px" Width="380px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <table align="center" class="auto-style4">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="LB_Password" runat="server" CssClass="auto-style7" Text="密碼"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TB_PasswordInput" runat="server" CssClass="auto-style8" Height="40px" Width="380px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">
                                <asp:Button ID="BT_Register" runat="server" CssClass="auto-style11" Height="40px" Text="   註冊   " Width="175px" BorderStyle="None" OnClick="BT_Register_Click" />
                            </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="LB_ToLogin" runat="server" Text="已經有帳號?"></asp:Label>
&nbsp;
                    <asp:LinkButton ID="LKB_ToLoginPage" runat="server" BorderStyle="None" CssClass="auto-style14" PostBackUrl="~/LoginPage.aspx">會員登入</asp:LinkButton>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="RegisterSqlData" runat="server" InsertCommand="INSERT INTO UserTable(user_name, user_phone, user_account, user_password) VALUES (@user_name, @user_phone, @user_account, @user_password)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TB_UserNameInput" Name="user_name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_PhoneInput" Name="user_phone" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_AccountInput" Name="user_account" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_PasswordInput" Name="user_password" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
