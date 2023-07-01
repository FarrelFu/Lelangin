<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Lelangin.view.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link href="../style/stylecart.css" rel="stylesheet" />
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
                    <li><a href="Account.aspx">Account</a></li>
                </ul>
            </div>
        </nav>

    </section>

    <section class="sec">
         <div align="center" class="container" >
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
                 <Columns>
                     <asp:BoundField DataField="sno" HeaderText="No">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="pid" HeaderText="Product ID">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:ImageField DataImageUrlField="pim" HeaderText="Product Image">
                         <ControlStyle Height="120px" Width="213px" />
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:ImageField>
                     <asp:BoundField DataField="pname" HeaderText="Product Name">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="pprice" HeaderText="Price">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="dateend" HeaderText="Bid End ">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                 </Columns>
                 <HeaderStyle BackColor="#74C3ED" />
             </asp:GridView>

             <br />

             <asp:Button ID="Button1" runat="server" Text="CheckOut" OnClick="Button1_Click" Height="30px" Width="150px" BackColor="#74c3ed" FontColor="White"/>
         </div>
        </section>

    
    </form>
</body>
</html>
