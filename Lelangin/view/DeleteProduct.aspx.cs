using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int a = int.Parse(txtid.Text);
            SqlConnection scon = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
            scon.Open();
            SqlCommand cmd = new SqlCommand("delete from Product where ProductID=" +a, scon);
            cmd.ExecuteNonQuery();
            scon.Close();
            lblerror.Text = "Produk telah berhasil dihapus";
        }
    }
}