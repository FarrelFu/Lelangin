<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Lelangin.view.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/styleadmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
           <section class="sec">
         <div class="container">
        <div class="left">
            <div class="form-left">
                <h1>WELCOME <br /> ADMIN</h1>
                <p>What is your need today?</p>
                <img src="../source/LogoLogin.png" />
            </div>
        </div>
        
        <div class="right">
            <div class="form-right">
                <br />
                <br />
               
                <asp:Button ID="btnaddprd" runat="server" Text="Add Product" Height="50px" Width="300px" font-size="30px" Onclick="btnaddprd_Click"/>
                <br />
                <br />
                <asp:Button ID="btndeleteprd" runat="server" Text="Delete Product" Height="50px" Width="300px" font-size="30px" onclick="btndeleteprd_Click"/>
                <br />
                <br />
                <asp:Button ID="btndeleteuser" runat="server" Text="Delete User" Height="50px" Width="300px" font-size="30px" OnClick="btndeleteuser_Click"/>
                <br />
               <br />
            </div>
        </div> 

    </div>
        </section>
    </form>
</body>
</html>
