using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnacc_Click(object sender, EventArgs e)
        {

        }

        protected void champ1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Product.aspx");
        }

        protected void champ2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("History.aspx");
        }

        protected void champ3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}