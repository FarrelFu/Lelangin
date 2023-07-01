using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnaddprd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addproduct.aspx");
        }

        protected void btndeleteprd_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteProduct.aspx");
        }

        protected void btndeleteuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteUser.aspx");
        }

        protected void btnupdateuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteUser.aspx");
        }
    }
}