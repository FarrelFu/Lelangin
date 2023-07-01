<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Lelangin.view.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link href="../style/stylehome.css" rel="stylesheet" />
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
                    <li><a href="Main.aspx">Logout</a></li>
                </ul>
            </div>
        </nav>

    </section>

    

    <section class="carousel">
        <div class="geseran">
            <div class="geser active">
            <img src="../source/carou1.png" />
            </div>
            <div class="geser">
                <img src="../source/car2.png" />
            </div>
            <div class="geser">
                <img src="../source/carou3.png" />
            </div>
            <div class="geser">
                <img src="../source/carou4.png" />
            </div>
            <div class="navi">
            <div class="tombol active"></div>
            <div class="tombol"></div>
            <div class="tombol"></div>
            <div class="tombol"></div>
            </div>
        </div>
    
        <script type="text/javascript">
            var gsr = document.querySelectorAll('.geser');
            var tmbl = document.querySelectorAll('.tombol');
            let currentgeser = 1;


            var manualNav = function (manual) {
                gsr.forEach((geser) => {
                    geser.classList.remove('active');

                    tmbl.forEach((tombol) => {
                        tombol.classList.remove('active');
                    });
                });

                gsr[manual].classList.add('active');
                tmbl[manual].classList.add('active');
            }

            tmbl.forEach((tombol, i) => {
                tombol.addEventListener("click", () => {
                    manualNav(i);
                    currentgeser = i;
                });
            });


            var auto = function (activeClass) {
                let active = document.getElementsByClassName('active');
                let i = 1;

                var automatic = () => {
                    setTimeout(function () {
                        [...active].forEach((activegeser) => {
                            activegeser.classList.remove('active');
                        });

                        gsr[i].classList.add('active');
                        tmbl[i].classList.add('active');
                        i++;

                        if (gsr.length == i) {
                            i = 0;
                        }
                        if (i >= gsr.length) {
                            return;
                        }
                        automatic();
                    }, 3000);
                }
                automatic();
            }
            auto();
        </script>
    </section>

    <section class="esport">
        <div class="subes">
            
            <asp:ImageButton ID="champ1" ImageUrl="../source/champ1.png" runat="server" onclick="champ1_Click"/>
            <asp:ImageButton ID="champ2" ImageUrl="../source/champ2.png" runat="server" onclick="champ2_Click"/>
            <asp:ImageButton ID="champ3" ImageUrl="../source/champ3.png" runat="server" onclick="champ3_Click"/>
            <h1>Lelangin</h1>
            <a href="Product.aspx" class="dyp">Lets Get Started</a>
        </div>
    </section>

          <section class="footer">
        <p>ALL RIGHT RESERVE @Lelangin <br /><br /> Contact Us : lelangin@gmail.com</p>
        
    
    </section>
      </form>

   
</body>
</html>
