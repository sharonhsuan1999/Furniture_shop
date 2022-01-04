<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lastPage.aspx.cs" Inherits="web1.lastPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            background-size:cover; 
            background-image: url('背景圖.png'); 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
            background-position: center center;

            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            color:#666;
        }
        .auto-style1 {
            width: 100%;
            height: 314px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            font-size: 55px;
            font-family: 微軟正黑體;
        }
        .auto-style4 {
            height: 24px;
            width: 61px;
        }
        .auto-style5 {
            width: 61px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style8 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style9 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="orderIDText0" runat="server" CssClass="auto-style3" Text="謝謝光臨"></asp:Label>
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="orderIDText" runat="server" CssClass="auto-style9" Text="訂購編號："></asp:Label>
                    <asp:Label ID="orderIDNum" runat="server" CssClass="auto-style9"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:LinkButton ID="ToIndexBt" runat="server" CssClass="auto-style8" PostBackUrl="~/Default.aspx">回首頁</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
