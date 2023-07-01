<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lelangin.view.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="../style/styleregis.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <section id = "Header">
        <nav>
            <a href="Main.aspx" ></a><img src="../source/lelangin_logo.png" style="height: 40px; width: 40px" />
            <a id="lg">Lelang'in</a>
            <div class = "Menu">
                <ul>
                    
                    <li><a href="Register.aspx">Register</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </div>
        </nav>

    </section>
        <section class="sec">
         <div class="container">
        <div class="left">
            <div class="form-left">
                <h1>Selamat datang di <br /> Lelangin</h1>
                <p>Silahkan lakukan registrasi untuk menikmati Lelangin</p>
                <img src="../source/LogoLogin.png" />
            </div>
        </div>
        
        <div class="right">
            <div class="form-right">
                <p>Username *</p>
                <asp:TextBox ID="txtUsername" runat="server" Placeholder="Enter your Username" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <p>Address *</p>
                <asp:TextBox ID="txtadd" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                
                <p>Email *</p>
                <asp:TextBox ID="txtemail" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
               
                <br />
                <p>Password *</p>
                <asp:TextBox ID="txtpass" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnregis" runat="server" Text="Register" BackColor="Blue" FontColor="White" Width="380px" Height="45px" onclick="btnregis_Click" ForeColor="White"/>
               <br />
                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                <br />
                <br />
                
            </div>
        </div> 

    </div>
        </section>
    </form>
</body>
</html>
