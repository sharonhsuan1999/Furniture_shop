<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdererPage.aspx.cs" Inherits="web1.OrdererPage" %>

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
        }
        .auto-style3 {
            text-align: center;
            height: 44px;
            font-family: 微軟正黑體;
        }
        .auto-style4 {
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        .auto-style6 {
            height: 24px;
            width: 544px;
            text-align: right;
            font-family: 微軟正黑體;
        }
        .auto-style7 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style9 {
            height: 34px;
            text-align: left;
        }
        .auto-style10 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            height: 24px;
            text-align: center;
        }
        .auto-style12 {
            text-align: left;
            height: 47px;
        }
        .auto-style13 {
            height: 24px;
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
            width: 386px;
            font-family: 微軟正黑體;
            height: 47px;
        }
        .auto-style15 {
            height: 34px;
            text-align: center;
            width: 386px;
            font-family: 微軟正黑體;
        }
        .auto-style16 {
            height: 24px;
            text-align: center;
            width: 386px;
            font-family: 微軟正黑體;
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
        .auto-style19 {
            height: 24px;
            text-align: center;
            font-family: 微軟正黑體;
        }
        .auto-style20 {
            height: 24px;
            width: 386px;
            text-align: right;
            font-family: 微軟正黑體;
        }
        .auto-style21 {
            font-family: 微軟正黑體;
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
                        </td>
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
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="paymentLB" runat="server" CssClass="auto-style7" Text="付款方式"></asp:Label>
                        <asp:DropDownList ID="paymentList" runat="server" CssClass="auto-style10" AutoPostBack="True" OnSelectedIndexChanged="paymentList_SelectedIndexChanged">
                            <asp:ListItem>現金</asp:ListItem>
                            <asp:ListItem>電子支付</asp:ListItem>
                        </asp:DropDownList>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    </td>
                    <td class="auto-style13" id="paymentID">
                        <asp:Label ID="paymentIDLB" runat="server" CssClass="auto-style7" Text="付款ID" Visible="False"></asp:Label>
                    &nbsp;<asp:TextBox ID="paymentIDTB" runat="server" CssClass="auto-style10" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style19" colspan="2">
&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13" colspan="2">
                        <asp:Label ID="getLB" runat="server" CssClass="auto-style7" Text="取貨方式"></asp:Label>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:DropDownList ID="getList" runat="server" CssClass="auto-style10" AutoPostBack="True" OnSelectedIndexChanged="getList_SelectedIndexChanged">
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
                        <asp:Button ID="checkoutBT" runat="server" Text="結帳" OnClick="checkoutBT_Click" CssClass="auto-style21" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="InsertOrdererSql" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderTable(order_time, order_userPhone, order_address, order_creditCard, customer_id) VALUES (GETDATE(), @order_userPhone, @order_address, @order_creditCard, @customer_id)" UpdateCommand="UPDATE orderProductTable SET order_id = @order_id, paid = 1 WHERE (customer_id = @customer_id)">
            <InsertParameters>
                <asp:ControlParameter ControlID="phoneTB" Name="order_userPhone" PropertyName="Text" />
                <asp:SessionParameter Name="order_address" SessionField="Address" />
                <asp:ControlParameter ControlID="paymentIDTB" Name="order_creditCard" PropertyName="Text" />
                <asp:SessionParameter Name="customer_id" SessionField="id" />
            </InsertParameters>
            <UpdateParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
                <asp:SessionParameter Name="customer_id" SessionField="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
