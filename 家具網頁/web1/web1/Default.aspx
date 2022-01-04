<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
            position: relative;
            left: -59px;
            top: 31px;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            width: 1384px;
            margin-top: 0px;
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style8 {
            width: 1627px;
            height: 489px;
        }
        .auto-style9 {
            width: 1367px;
            color: #666666;
            position: relative;
            left: 46px;
            top: 62px;
            margin-right: 0px;
        }
        .auto-style10 {
            top: 2px;
            width: 341px;
            table-layout: auto;
            left: 358px;
            text-align: center;
        }
        .auto-style11 {
            text-decoration: none;
            font-size: x-large;
            color: #666666;
        }
        .auto-style12 {
            left: 499px;
            top: 2px;
            width: 341px;
            table-layout: auto;
            text-align: center;
        }
        .auto-style14 {
            top: -60px;
            width: 342px;
            table-layout: auto;
            left: 1153px;
            text-align: center;
        }
        .auto-style15 {
            left: 2px;
            top: 2px;
            width: 341px;
            table-layout: auto;
            text-align: center;
        }
        .auto-style16 {
            width: 1389px;
        }
        .auto-style17 {
            width: 351px;
            color: #666666;
            height: 51px;
        }
        .auto-style19 {
            width: 89%;
            position: relative;
            left: -9px;
            top: 69px;
        }
        .auto-style20 {
            width: 91px;
        }
        .auto-style21 {
            color: #333333;
            font-weight: bold;
            background-color: #E8E0DE;
        }
        .auto-style22 {
            color: #666666;
        }
        .auto-style23 {
            width: 91px;
            height: 24px;
        }
        .auto-style24 {
            height: 24px;
        }
        .auto-style25 {
            margin-top: 0px;
        }
        .auto-style27 {
            position: relative;
            left: 0px;
            top: 12px;
        }
        .auto-style28 {
            width: 91px;
            height: 20px;
        }
        .auto-style29 {
            height: 20px;
        }
        .auto-style30 {
            width: 2098px;
            color: #666666;
            text-align: right;
            font-size: xx-large;
            height: 51px;
        }
        .auto-style31 {
            width: 128px;
            height: 51px;
        }
        .auto-style32 {
            width: 5996px;
            color: #666666;
            text-align: right;
            font-size: xx-large;
            height: 51px;
        }
        .auto-style33 {
            font-size: medium;
            color: #333333;
        }
    </style>
</head>
<body style="background-size:cover; background-image: url('背景圖.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server" class="auto-style8">
        <div class="auto-style1">
            <table class="auto-style16">
                <tr>
                    <td class="auto-style32">
                        <strong>Welcome to Furniture Wonderland!&nbsp; </strong>
                    </td>
                    <td class="auto-style30">
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="LB_HelloUser" runat="server" CssClass="auto-style33"></asp:Label>
                    </td>
                    <td style="background-image: none; background-repeat: no-repeat; background-attachment: fixed; background-position: center center" class="auto-style31">
                        <asp:ImageButton ID="profileIB" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/profile.png" PostBackUrl="~/LoginPage.aspx" />
                    </td>
                    <td style="background-image: none; background-repeat: no-repeat; background-attachment: fixed; background-position: center center" class="auto-style31">
                        <asp:ImageButton ID="shoppingCartIB" runat="server" ImageUrl="~/shopping.png" PostBackUrl="~/ShoppingCart.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="5">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style9">
            <tr style="position: relative">
                <td class="auto-style15"><strong>
                    <asp:LinkButton ID="chairLKB" runat="server" CssClass="auto-style11" OnClick="chairLKB_Click">椅子</asp:LinkButton>
                    </strong></td>
                <td class="auto-style10"><strong>
                    <asp:LinkButton ID="tableLKB" runat="server" CssClass="auto-style11" OnClick="tableLKB_Click">桌子</asp:LinkButton>
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:LinkButton ID="cabinetLKB" runat="server" CssClass="auto-style11" OnClick="cabinetLKB_Click">櫃子</asp:LinkButton>
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:LinkButton ID="lampLKB" runat="server" CssClass="auto-style11" OnClick="lampLKB_Click">燈具</asp:LinkButton>
                    </strong></td>
            </tr>
        </table>
        <table class="auto-style19">
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>
                    <asp:Image ID="image1" runat="server" BorderColor="#988070" BorderStyle="Double" Height="200px" Visible="False" Width="200px" />
                </td>
                <td>
                    <asp:Image ID="image2" runat="server" BorderColor="#988070" BorderStyle="Double" Height="200px" Visible="False" Width="200px" />
                </td>
                <td>
                    <asp:Image ID="image3" runat="server" BorderColor="#988070" BorderStyle="Double" Height="200px" Visible="False" Width="200px" />
                </td>
                <td>
                    <asp:Image ID="image4" runat="server" BorderColor="#988070" BorderStyle="Double" Height="200px" Visible="False" Width="200px" />
                </td>
                <td>
                    <asp:Image ID="image5" runat="server" BorderColor="#988070" BorderStyle="Double" Height="200px" Visible="False" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>
                    <strong>
                    <asp:Label ID="name1_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="name2_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="name3_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="name4_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="name5_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style29">
                    <strong>
                    <asp:Label ID="money1_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style29">
                    <strong>
                    <asp:Label ID="money2_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style29">
                    <strong>
                    <asp:Label ID="money3_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style29">
                    <strong>
                    <asp:Label ID="money4_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style29">
                    <strong>
                    <asp:Label ID="money5_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Qt1_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Qt2_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Qt3_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Qt4_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style24">
                    <strong>
                    <asp:Label ID="Qt5_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>
                    <strong>
                    <asp:Button ID="add1_BT" runat="server" Text="add" CssClass="auto-style21" OnClick="add1_Click1" Visible="False"  />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="add2_BT" runat="server" Text="add" CssClass="auto-style21" OnClick="add2_Click" Visible="False"  />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="add3_BT" runat="server" Text="add" CssClass="auto-style21" OnClick="add3_Click1" Visible="False"  />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="add4_BT" runat="server" Text="add" CssClass="auto-style21" OnClick="add4_Click1" Visible="False"  />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="add5_BT" runat="server" Text="add" CssClass="auto-style21" OnClick="add5_Click1" Visible="False" />
                    </strong>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p class="auto-style27">
            <asp:Button ID="truncateTableBT" runat="server" OnClick="truncateTableBT_Click" Text="重建表單" Visible="False" />
        <asp:SqlDataSource ID="showProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [product_Id], [product_name], [product_price], [product_qt], [product_class] FROM [productTable]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="showProductGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="product_Id" DataSourceID="showProduct" Visible="False">
                <Columns>
                    <asp:BoundField DataField="product_Id" HeaderText="product_Id" InsertVisible="False" ReadOnly="True" SortExpression="product_Id" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                    <asp:BoundField DataField="product_qt" HeaderText="product_qt" SortExpression="product_qt" />
                    <asp:BoundField DataField="product_class" HeaderText="product_class" SortExpression="product_class" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="classSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT product_class, product_name, product_price, product_qt, product_Id FROM productTable WHERE (product_class = @product_class)">
                <SelectParameters>
                    <asp:SessionParameter Name="product_class" SessionField="class" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="classGridView" runat="server" AutoGenerateColumns="False" CssClass="auto-style25" DataKeyNames="product_Id" DataSourceID="classSqlDataSource" Visible="False">
                <Columns>
                    <asp:BoundField DataField="product_class" HeaderText="product_class" SortExpression="product_class" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                    <asp:BoundField DataField="product_qt" HeaderText="product_qt" SortExpression="product_qt" />
                    <asp:BoundField DataField="product_Id" HeaderText="product_Id" InsertVisible="False" ReadOnly="True" SortExpression="product_Id" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="orderProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderProductTable(product_id, order_id, customer_id) VALUES (@product_id, @order_id, @customer_id)" SelectCommand="SELECT orderProductTable.orderProduct_id, orderProductTable.product_id, productTable.product_name FROM orderProductTable INNER JOIN productTable ON orderProductTable.product_id = productTable.product_Id AND orderProductTable.product_id = productTable.product_Id">
            <InsertParameters>
                <asp:SessionParameter Name="product_id" SessionField="product_id" />
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
                <asp:SessionParameter Name="customer_id" SessionField="id" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="orderProductGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="orderProduct_id" DataSourceID="orderProductDataSource" Visible="False">
            <Columns>
                <asp:BoundField DataField="orderProduct_id" HeaderText="orderProduct_id" InsertVisible="False" ReadOnly="True" SortExpression="orderProduct_id" />
                <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="HelloUserDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_id, user_name, user_phone, user_account, user_password FROM UserTable WHERE (user_id = @user_id)">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="HelloUserDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="HelloUserDataSource" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
                <asp:BoundField DataField="user_account" HeaderText="user_account" SortExpression="user_account" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
