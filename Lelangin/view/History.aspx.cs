
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
    public partial class History : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            

            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select * from AfterPay where (ProductName like '%" + TextBox1.Text + "%') or (TransactionStatus like '%" + TextBox1.Text + "%')", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label cartid = e.Item.FindControl("lblid") as Label;
            Label status = e.Item.FindControl("lblst") as Label;
            SqlDataAdapter sda = new SqlDataAdapter("select * from AfterPay where PayID='" + cartid.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            String prc = "";
            if (dt.Rows.Count > 0)
            {
                prc = dt.Rows[0]["ProductDateEnd"].ToString();
            }
            con.Close();

            DateTime n = DateTime.Now;
            DateTime m = DateTime.Parse(prc);

            if (n>m)
            {
                status.Text = "Completed";
                
            }

        }

        
    }
}