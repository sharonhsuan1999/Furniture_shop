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
        .auto-style15 {
            height: 22px;
        }
        .auto-style16 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-image: url('背景圖.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
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
                                <asp:TextBox ID="TB_UserNameInput" runat="server" CssClass="auto-style16" Height="40px" Width="380px"></asp:TextBox>
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
                                <asp:TextBox ID="TB_PhoneInput" runat="server" CssClass="auto-style16" Height="40px" Width="380px" TextMode="Phone"></asp:TextBox>
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
                                <asp:TextBox ID="TB_AccountInput" runat="server" CssClass="auto-style16" Height="40px" Width="380px"></asp:TextBox>
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
                                <asp:TextBox ID="TB_PasswordInput" runat="server" CssClass="auto-style16" Height="40px" Width="380px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
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
        <asp:SqlDataSource ID="RegisterSqlData" runat="server" InsertCommand="INSERT INTO UserTable(user_name, user_phone, user_account, user_password) VALUES (@user_name, @user_phone, @user_account, @user_password)" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_id, user_name, user_phone, user_account, user_password FROM UserTable">
            <InsertParameters>
                <asp:ControlParameter ControlID="TB_UserNameInput" Name="user_name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_PhoneInput" Name="user_phone" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_AccountInput" Name="user_account" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_PasswordInput" Name="user_password" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="RegisterSqlData" Visible="False">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
                <asp:BoundField DataField="user_account" HeaderText="user_account" SortExpression="user_account" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
