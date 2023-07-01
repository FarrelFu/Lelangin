<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Lelangin.view.Addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/styleaddprod.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
            <section class="sec">
         <div class="container">
        <div class="left">
            <div class="form-left">
                <h1>WELCOME <br /> ADMIN</h1>
                <p>Lets add a product</p>
                <img src="../source/LogoLogin.png" />
            </div>
        </div>
        
        <div class="right">
            <div class="form-right">
               <p>Product Name</p>
                <asp:TextBox ID="txtname" runat="server" Placeholder="Enter your Username" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <p>Product Bid Price</p>
                <asp:TextBox ID="txtbid" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                  <br />
                <p>Product Buyout Price</p>
                <asp:TextBox ID="txtuy" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                  <br />
                <p>Product Description</p>
                <asp:TextBox ID="txtdes" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                  <br />
                <p>Product Category</p>
                <asp:TextBox ID="txtcat" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                  <br />
                <p>ProductImage</p>
                <asp:TextBox ID="txtimg" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                  <br />
                <p>Product End Bid</p>
                <asp:TextBox ID="txtdate" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnadd" runat="server" Text="Add product" BackColor="Blue" FontColor="White" Width="140px" Height="45px" onclick="btnadd_Click" ForeColor="White"/>
                <asp:Button ID="btnback" runat="server" Text="Back" BackColor="Blue" FontColor="White" Width="140px" Height="45px" onclick="btnback_Click" ForeColor="White"/>
               <br />
                <br />
                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
            </div>
        </div> 

    </div>
        </section>
    </form>
</body>
</html>
