<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lelangin.view.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../style/stylelogin.css" rel="stylesheet" />
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
                    <li><a href="Register.aspx">Login</a></li>
                </ul>
            </div>
        </nav>

    </section>
        <section class="sec">
         <div class="container">
        <div class="left">
            <div class="form-left">
                <h1>Selamat datang di <br /> Lelangin</h1>
                <p>Silahkan lakukan login untuk masuk ke akun anda!</p>
                <img src="../source/LogoLogin.png" />
            </div>
        </div>
        
        <div class="right">
            <div class="form-right">
                <p>Username *</p>
                <asp:TextBox ID="txtUsername" runat="server" Placeholder="Enter your Username" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <p>Password *</p>
                <asp:TextBox ID="txtPassword" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <span>Remember me</span>
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="Blue" FontColor="White" Width="380px" Height="45px" onclick="btnLogin_Click" ForeColor="White"/>
               <br />
                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <a href="Register.aspx">Don't have an account?</a>
            </div>
        </div> 

    </div>
        </section>
    </form>
</body>
</html>
