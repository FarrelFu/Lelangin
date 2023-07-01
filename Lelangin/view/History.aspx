<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Lelangin.view.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/stylehistory.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
   <section id = "Header">
        <nav>
            <a href="#" ></a><img src="../source/lelangin_logo.png" style="height: 40px; width: 40px" />
            <a id="lg">Lelang'in</a>
            <div class = "Menu">
                <ul>
                    
                    <li><a href="Product.aspx">Product</a></li>
                   <li><a href="History.aspx">History</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                </ul>
            </div>
        </nav>

    </section>

     <section class="lul">
           
            <table >
                <tr>
                    <td>
                        <p id="oi">Input Product Name or Product Category to search</p>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height ="20px" Width ="180px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" Width="23px"  ImageUrl="../source/search%20logo.png" onclick="ImageButton2_Click"/>
                    </td>
                </tr>
            </table>
        </section>

    <section id = "badan" align="center">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="PayId" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" OnItemDataBound="DataList1_ItemDataBound" >
             <ItemTemplate>
                   <table>
                     <tr>
                         <td style="text-align : center ; background-color : #74c3ed ; font-size : 20px" >
                             <asp:Label ID="prdname" runat="server" Text='<%# Eval("ProductName") %>' ></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align : center">
                             <asp:Image ID="Image1" runat="server" Height="270px" Width="480px" ImageURL='<%# Eval("ProductImage") %>'/>
                         </td>
                     </tr>
                        <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label2" runat="server" Text="Product ID :"></asp:Label>
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                         </td>
                     </tr>
                      <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label3" runat="server" Text="Bid End :"></asp:Label>
                             <asp:Label ID="lbldt" runat="server" Text='<%# Eval("ProductDateEnd") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label1" runat="server" Text="Pay Price : Rp."></asp:Label>
                             <asp:Label ID="prdbid" runat="server" Text='<%# Eval("ProductBuyPrice") %>'></asp:Label>
                         </td>
                     </tr>
                     
                     <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label4" runat="server" Text="Status :"></asp:Label>
                             <asp:Label ID="lblst" runat="server" Text='<%# Eval("TransactionStatus") %>'></asp:Label>
                         </td>
                     </tr>
                  
                       <asp:Label ID="lblid" runat="server" Text='<%# Eval("PayId") %>' Visible="false"></asp:Label>
                       </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LelanginConnectionString2 %>" SelectCommand="SELECT [PayId], [ProductId], [ProductName], [ProductBuyPrice], [ProductImage], convert(varchar(12),ProductDateEnd,101) AS ProductDateEnd, [TransactionStatus] FROM [AfterPay]"></asp:SqlDataSource>
        </section>
</form>
</body>
</html>
