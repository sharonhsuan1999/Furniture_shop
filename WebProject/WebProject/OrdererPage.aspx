﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdererPage.aspx.cs" Inherits="WebProject.OrdererPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            height: 44px;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style6 {
            height: 24px;
            width: 544px;
            text-align: right;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style9 {
            height: 34px;
            text-align: left;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            height: 24px;
            text-align: center;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            height: 24px;
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
            width: 386px;
        }
        .auto-style15 {
            height: 34px;
            text-align: center;
            width: 386px;
        }
        .auto-style16 {
            height: 24px;
            text-align: center;
            width: 386px;
        }
        .auto-style17 {
            height: 24px;
            width: 386px;
            text-align: right;
        }
        .auto-style18 {
            height: 24px;
            width: 544px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="3"><strong>
                        <asp:Label ID="ordererLB" runat="server" CssClass="auto-style4" Text="訂購人資訊"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style12" colspan="2">
                        <asp:Label ID="nameLB" runat="server" CssClass="auto-style7" Text="姓名："></asp:Label>
                        <asp:TextBox ID="nameTB" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style9" colspan="2">
                        <asp:Label ID="phoneLB" runat="server" CssClass="auto-style7" Text="電話："></asp:Label>
                        <asp:TextBox ID="phoneTB" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="paymentLB" runat="server" CssClass="auto-style7" Text="付款方式"></asp:Label>
                        <asp:DropDownList ID="paymentList" runat="server" CssClass="auto-style10">
                            <asp:ListItem>現金</asp:ListItem>
                            <asp:ListItem>電子支付</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style13" id="paymentID">
                        <asp:Label ID="paymentIDLB" runat="server" CssClass="auto-style7" Text="付款ID"></asp:Label>
                    &nbsp;<asp:TextBox ID="paymentIDTB" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="2">
&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13" colspan="2">
                        <asp:Label ID="getLB" runat="server" CssClass="auto-style7" Text="取貨方式"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="getList" runat="server" CssClass="auto-style10">
                            <asp:ListItem>宅配</asp:ListItem>
                            <asp:ListItem>店取</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="address" runat="server" CssClass="auto-style7" Text="地址："></asp:Label>
                        <asp:DropDownList ID="addressList" runat="server" CssClass="auto-style10">
                            <asp:ListItem>台北市</asp:ListItem>
                            <asp:ListItem>新北市</asp:ListItem>
                            <asp:ListItem>桃園市</asp:ListItem>
                            <asp:ListItem>新竹縣</asp:ListItem>
                            <asp:ListItem>新竹市</asp:ListItem>
                            <asp:ListItem>苗栗縣</asp:ListItem>
                            <asp:ListItem>台中市</asp:ListItem>
                            <asp:ListItem>南投縣</asp:ListItem>
                            <asp:ListItem>彰化縣</asp:ListItem>
                            <asp:ListItem>雲林縣</asp:ListItem>
                            <asp:ListItem>嘉義縣</asp:ListItem>
                            <asp:ListItem>嘉義市</asp:ListItem>
                            <asp:ListItem>台南市</asp:ListItem>
                            <asp:ListItem>高雄市</asp:ListItem>
                            <asp:ListItem>屏東縣</asp:ListItem>
                            <asp:ListItem>基隆市</asp:ListItem>
                            <asp:ListItem>宜蘭縣</asp:ListItem>
                            <asp:ListItem>花蓮縣</asp:ListItem>
                            <asp:ListItem>台東縣</asp:ListItem>
                            <asp:ListItem>澎湖縣</asp:ListItem>
                            <asp:ListItem>金門縣</asp:ListItem>
                            <asp:ListItem>連江縣</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:TextBox ID="addressTB" runat="server" CssClass="auto-style10" Width="244px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="checkoutBT" runat="server" Text="結帳" OnClick="checkoutBT_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>