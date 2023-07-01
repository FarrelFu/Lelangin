<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Lelangin.view.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>account</title>
    <link href="../style/styleacc.css" rel="stylesheet" />
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
                    <li><a href="Home.aspx">History</a></li>
                    <li><a href="Account.aspx">Account</a></li>
                </ul>
            </div>
        </nav>

    </section>
    <section id="badi">
        <div class="container">
            <div class="box-left">
            <h1>Account Profile</h1>
            <br />
            <br />
            <span>Name</span>
            
            <br />
            <br />
            <span>Password</span>
            
            <br />
            <br />
            <span>Address</span>
            
            <br />
            <br />
            <span>Transaction Done</span>
            
            <br />
            <br />
            <div class="button">
            <asp:Button ID="btnChange" runat="server" Text="Change" onclick="btnChange_Click" Width="200px" Height="30px"/>
            </div>
            
            </div>

            
                
            


            <div class="box-right">
                <br />
                <br />
                <asp:TextBox ID="txtName" runat="server" Width="400px" Height="20px" BackColor="LightGray"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtPassword" runat="server" Width="400px" Height="20px" BackColor="LightGray"></asp:TextBox>
                 <br />
                <br />
                <asp:TextBox ID="txtAddress" runat="server" Width="400px" Height="20px" BackColor="LightGray"></asp:TextBox>
                 <br />
                <br />
                <asp:TextBox ID="txtTransaction" runat="server" Width="400px" Height="20px" BackColor="LightGray"></asp:TextBox>
            </div>
        </div>
        </section>
    </form>
</body>
</html>
