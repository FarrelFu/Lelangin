using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("Product.aspx");
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddCartBid")
            {
                string[] arg = new string[2];

                arg = e.CommandArgument.ToString().Split(';');
                string a = arg[0];
                string b = arg[1];
                Response.Redirect("Cart.aspx?id=" + a  + "&price=" + b) ;
            }
            if (e.CommandName == "AddCartBuy")
            {
                string[] arg = new string[2];

                arg = e.CommandArgument.ToString().Split(';');
                string a = arg[0];
                string b = arg[1];
                Response.Redirect("Cart.aspx?id=" + a  + "&price=" + b);
            }
        }
    }
}