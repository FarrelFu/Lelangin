<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Lelangin.view.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link href="../style/style.css" rel="stylesheet" />
</head>
<body>
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

     <section class="head">

        

        <div id = "think">
            THINK FAST
        </div>
        
        <div id = "bid">
            BID OFTEN
        </div>
        
        <div id = "pay">
            PAY WITH NO WORRIES
        </div>
       
        <br />
        <div class="button">
            <a href="Register.aspx" class="button-bg">Register Now</a>
        </div>
        
         <div class="logo">
             <img src="../source/lelangin_logo.png" />
         </div>

    </section>

     <section class="badi">



        <div class="latest">
            <div class="joedoel">
                <h1>OUR AWARD HISTORY</h1>
                <p>BEHOLD TO WITHNESS THE BEST MOMENT OF OUR APPLICATION</p>
            </div>
            <div class="ltgbr">
                <div class="gbrLatest">
                    <img src="../source/award1.png" />
                    <div class="lay">
                        <h3>BEST MOBILE APPLICATION AWARD</h3>
                        <p>by Google Play</p>
                    </div>
                </div>
                <div class="gbrLatest">
                    <img src="../source/award%202.png" />
                    <div class="lay">
                        <h3>INDONESIA WEBSITE AWARD</h3>
                        <p>by IWA</p>
                    </div>
                </div>
            </div>

            <div class="ltgbr">
                <div class="gbrLatest">
                    <img src="../source/award3.png" />
                    <div class="lay">
                        <h3>MY BIDDING CHOICHE</h3>
                        <p>by Lionell Messi</p>
                    </div>
                </div>
                <div class="gbrLatest">
                    <img src="../source/award4.png" />
                    <div class="lay">
                        <h3>OSCAR 2023</h3>
                        <p>by Academy Award</p>
                    </div>
                </div>
            </div>

        </div>
        
    </section>

     <section class="footer">
        <p>ALL RIGHT RESERVE @Lelangin <br /><br /> Contact Us : lelangin@gmail.com</p>
        
    
    </section>

</body>
</html>
