
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnregis_Click(object sender, EventArgs e)
        {
            lblerror.Text = null;
            string username = txtUsername.Text;
            string address = txtadd.Text;
            string email = txtemail.Text;
            string pass = txtpass.Text;

            SqlConnection scon = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
            scon.Open();
            SqlCommand cmd = new SqlCommand("insert into Customer(CustomerName, CustomerPass, CustomerAddress, CustomerEmail) values ('" + txtUsername.Text + "','" + txtpass.Text + "','" + txtadd.Text + "','" + txtemail.Text + "')", scon);
            cmd.ExecuteNonQuery();
            scon.Close();
            lblerror.Text = "User is registered! Go to login page";
            txtUsername.Text = null;
            txtadd.Text = null;
            txtemail.Text = null;
            txtpass.Text = null;
          
        }
    }
}