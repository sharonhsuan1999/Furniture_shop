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
            left: 4px;
            top: 34px;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            width: 1339px;
            margin-top: 0px;
        }
        .auto-style8 {
            width: 1627px;
            height: 489px;
        }
        .auto-style9 {
            width: 83%;
            color: #666666;
            position: relative;
            left: 10px;
            top: 62px;
            margin-right: 0px;
        }
        .auto-style10 {
            top: 2px;
            width: 474px;
            table-layout: auto;
            left: 358px;
        }
        .auto-style11 {
            text-decoration: none;
            font-size: x-large;
            color: #666666;
        }
        .auto-style12 {
            left: 499px;
            top: 2px;
            width: 548px;
            table-layout: auto;
        }
        .auto-style13 {
            left: 2px;
            top: 2px;
            width: 470px;
        }
        .auto-style14 {
            top: 2px;
            width: 256px;
            table-layout: auto;
            left: 1090px;
        }
        .auto-style15 {
            left: 2px;
            top: 2px;
            width: 165px;
            table-layout: auto;
        }
        .auto-style16 {
            width: 105%;
        }
        .auto-style17 {
            width: 1332px;
            color: #666666;
        }
        .auto-style18 {
            width: 57px;
        }
        .auto-style19 {
            width: 83%;
            position: relative;
            left: -9px;
            top: 69px;
        }
        .auto-style20 {
            width: 110px;
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
            width: 110px;
            height: 24px;
        }
        .auto-style24 {
            height: 24px;
        }
        .auto-style25 {
            margin-top: 0px;
        }
        .auto-style26 {
            font-size: xx-large;
        }
        .auto-style27 {
            position: relative;
            left: 0px;
            top: 12px;
        }
    </style>
</head>
<body style="background-size:cover; background-image: url('背景圖.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server" class="auto-style8">
        <div class="auto-style1">
            <table class="auto-style16">
                <tr>
                    <td class="auto-style17">
                        <span class="auto-style26">Welcome to Furniture Wonderland!<br />
                        </span>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="background-image: none; background-repeat: no-repeat; background-attachment: fixed; background-position: center center" class="auto-style18">
                        <asp:ImageButton ID="profileIB" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/profile.png" />
                    </td>
                    <td style="background-image: none; background-repeat: no-repeat; background-attachment: fixed; background-position: center center" class="auto-style18">
                        <asp:ImageButton ID="shoppingCartIB" runat="server" ImageUrl="~/shopping.png" />
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style9">
            <tr style="position: relative">
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13" style="table-layout: auto"><strong>
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
                <td class="auto-style20">&nbsp;</td>
                <td>
                    <strong>
                    <asp:Label ID="money1_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="money2_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="money3_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="money4_LB" runat="server" Text="Label" CssClass="auto-style22" Visible="False"></asp:Label>
                    </strong>
                </td>
                <td>
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
            <asp:Button ID="truncateTableBT" runat="server" OnClick="truncateTableBT_Click" Text="重建表單" />
        <asp:SqlDataSource ID="showProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT product_Id, product_name, product_price, product_qt, product_class FROM productTable"></asp:SqlDataSource>
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
        <asp:SqlDataSource ID="orderProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderProductTable(product_id, order_id) VALUES (@product_id, @order_id)" SelectCommand="SELECT orderProductTable.orderProduct_id, orderProductTable.product_id, productTable.product_name FROM orderProductTable INNER JOIN productTable ON orderProductTable.product_id = productTable.product_Id AND orderProductTable.product_id = productTable.product_Id">
            <InsertParameters>
                <asp:SessionParameter Name="product_id" SessionField="product_id" />
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="orderProductGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="orderProduct_id" DataSourceID="orderProductDataSource" Visible="False">
            <Columns>
                <asp:BoundField DataField="orderProduct_id" HeaderText="orderProduct_id" InsertVisible="False" ReadOnly="True" SortExpression="orderProduct_id" />
                <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
