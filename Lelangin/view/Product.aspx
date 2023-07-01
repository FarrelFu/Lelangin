 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Lelangin.view.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
    <link href="../style/styleproduct.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section id = "Header">
        <nav>
            <a href="Home.aspx" ></a><img src="../source/lelangin_logo.png" style="height: 40px; width: 40px" />
            <a id="lg">Lelang'in</a>
            <div class = "Menu">
                <ul>
                    
                    <li><a href="Product.aspx">Product</a></li>
                    <li><a href="History.aspx">History</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                </ul>
            </div>
        </nav>

    </section >

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
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" Width="23px"  ImageUrl="../source/search%20logo.png" Onclick="ImageButton2_Click"/>
                    </td>
                </tr>
            </table>
        </section>
            <section id = "badan" align="center">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" Height="400px" Width="100%" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-left: 20px; margin-top: 20px" OnItemCommand="DataList1_ItemCommand1" OnItemDataBound="DataList1_ItemDataBound" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
               <ItemTemplate>
                   <table>
                     <tr>
                         <td style="text-align : center ; background-color : #74c3ed ; font-size : 20px" >
                             <asp:Label ID="prdname" runat="server" Text='<%# Eval("ProductName") %>' ></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align : center">
                             <asp:Image ID="Image1" runat="server" Height="270px" Width="480px" ImageURL='<%# Eval("ProductImage") %>' style="margin-right: 1px"/>
                         </td>
                     </tr>
                      <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label3" runat="server" Text="Bid End :"></asp:Label>
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductDateEnd") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label2" runat="server" Text="Categorie :"></asp:Label>
                             <asp:Label ID="prdcat" runat="server" Text='<%# Eval("ProductCategory") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label1" runat="server" Text="Bid Price : Rp."></asp:Label>
                             <asp:Label ID="prdbid" runat="server" Text='<%# Eval("ProductCurrentBid") %>'></asp:Label>
                         </td>
                     </tr>
                     
                     <tr>
                         <td style="text-align : center ; font-size : 20px">
                             <asp:Label ID="Label4" runat="server" Text="BuyOut Price : Rp."></asp:Label>
                             <asp:Label ID="prdbuy" runat="server" Text='<%# Eval("ProductBuyout") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align : center">
                             <asp:ImageButton ID="ImageButton1" runat="server" ImageURL="../source/view%20logo.png"  CommandArgument='<%# Eval("ProductId") %>' CommandName ="View_Product" Height="60px" Width="60px"/>
                         </td>
                     </tr>
                       <asp:Label ID="lblid" runat="server" Text='<%# Eval("ProductId") %>' Visible="false"></asp:Label>
                       </table>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LelanginConnectionString2 %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductCurrentBid], [ProductBuyout], [ProductCategory], [ProductImage], convert(varchar(12),ProductDateEnd,101) AS ProductDateEnd FROM [Product]"></asp:SqlDataSource>        
        </section>
            
         <section class="footer">
        <p>ALL RIGHT RESERVE @Lelangin <br /><br /> Contact Us : lelangin@gmail.com</p>
        
    
    </section>
    </form>
</body>
</html>
