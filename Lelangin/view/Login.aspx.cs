
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select * from Customer where CustomerName='" + txtUsername.Text + "' and CustomerPass='" + txtPassword.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 1)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblerror.Text = "The username or password is wrong";
                txtPassword.Text = null;
                txtUsername.Text = null;
            }
        }
    }
}