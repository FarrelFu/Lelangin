
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
    public partial class Product : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select * from Product where (ProductName like '%"+ TextBox1.Text + "%') or (ProductCategory like '%" + TextBox1.Text + "%')", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "View_Product")
            {
                string id = e.CommandArgument.ToString();
                Response.Redirect("ProductDetail.aspx?id=" + id);
            }
        }

        protected void prodcat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void dropcat()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label productid = e.Item.FindControl("lblid") as Label;
            Label productbid = e.Item.FindControl("prdbid") as Label;
            Label productbuy = e.Item.FindControl("prdbuy") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;

            SqlDataAdapter sda = new SqlDataAdapter("select * from Product where ProductID='" + productid.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            String prc = "";
            if (dt.Rows.Count > 0)
            {
                prc = dt.Rows[0]["ProductCurrentBid"].ToString();
            }
            con.Close();
            if (prc.Equals(productbuy.Text))
            {
                productbid.Text = "sold out";
                btn.Enabled = false;
                btn.ImageUrl = "../source/sold out.png";
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}