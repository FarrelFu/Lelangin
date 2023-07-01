<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Lelangin.view.ProductDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/styleview.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <section id = "Header">
        <nav>
            <a href="Main.aspx" ></a><img src="../source/lelangin_logo.png" style="height: 40px; width: 40px" />
            <a id="lg">Lelang'in</a>
            <div class = "Menu">
                <ul>
                    
                     <li><a href="Product.aspx">Product</a></li>
                    <li><a href="History.aspx">History</a></li>
                    <li><a href="Account.aspx">Account</a></li>
                </ul>
            </div>
        </nav>

    </section>
        <section class="sec">
         <div class="container">
             <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" Width="100%" OnItemCommand ="DataList1_ItemCommand" >
                <ItemTemplate>
           <div class="left">
            <div class="form-left">
                
                
                <img src='<%# Eval("ProductImage") %>'/>
            </div>
        </div>
        
        <div class="right">
            <div class="form-right">
              <h1><%# Eval("ProductName") %></h1>
            <h6>Product End Bid : <%# Eval("ProductDateEnd") %></h6>

            <h6>Product Description : <%# Eval("ProductDesc") %></h6>
              
            

            <p>Bid Price  Rp <%# Eval("ProductCurrentBid") %></p> 
            
            <p>Buyout  Rp <%# Eval("ProductBuyout") %></p>
           
           
            <div class="box">
             <p>
                 By Pressing Bid Button, you are agree to bid by the price that has been setting
             </p>
            </div>
            

                <br />
            <asp:Button ID="bidbtn" runat="server" Text="Bid"  Width="100px" Height="28px" CommandName ="AddCartBid" CommandArgument='<%# Eval("ProductId") + ";" + Eval("ProductCurrentBid") %>' />
            <asp:Button ID="buybtn" runat="server" Text="Buyout"  Width="100px" Height="28px"  CommandName ="AddCartBuy" CommandArgument='<%# Eval("ProductId") + ";" + Eval("ProductBuyout") %>' />
            </div>

             
            </div>
           
                 </ItemTemplate>

             </asp:DataList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LelanginConnectionString2 %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductCurrentBid], [ProductBuyout], [ProductDesc], [ProductImage], [ProductDateEnd] FROM [Product] WHERE ([ProductID] = @ProductID)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
            
        </div>
            
    
        </section>

    </form>
</body>
</html>
