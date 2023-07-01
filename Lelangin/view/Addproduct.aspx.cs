using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lelangin.view
{
    public partial class Addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            //int b = int.Parse(txtbid.Text);
            //int c = int.Parse(txtuy.Text);
            //DateTime d = DateTime.ParseExact(txtdate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
            SqlConnection scon = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
            scon.Open();
            SqlCommand cmd = new SqlCommand("insert into Product(ProductName,ProductCurrentBid,ProductBuyout,ProductDesc, ProductCategory, ProductImage,ProductDateEnd) values ('" + txtname.Text + "'," + txtbid.Text + "," + txtuy.Text + ",'" + txtdes.Text + "','" + txtcat.Text + "','" + txtimg.Text + "','" + txtdate.Text + "')", scon);
            cmd.ExecuteNonQuery();
            scon.Close();
            lblerror.Text = "Produk telah berhasil ditambah";
            txtbid.Text = null;
            txtcat.Text = null;
            txtdate.Text = null;
            txtdes.Text = null;
            txtimg.Text = null;
            txtname.Text = null;
            txtuy.Text = null;
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}