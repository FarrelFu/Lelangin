<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="Lelangin.view.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/styledeleteus.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <section class="sec">
         <div class="container">
        <div class="left">
            <div class="form-left">
                <h1>WELCOME <br /> ADMIN</h1>
                <p>Lets delete a user</p>
                <img src="../source/LogoLogin.png" />
            </div>
        </div>
        
        <div class="right">
            <div class="form-right">
                <p>User ID that want to be deleted</p>
                <asp:TextBox ID="txtid" runat="server" Placeholder="Enter your Password" Width="380px" Height="45px"> </asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btndelete" runat="server" Text="Delete user" BackColor="Blue" FontColor="White" Width="140px" Height="45px" onclick="btndelete_Click" ForeColor="White"/>
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
