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
    public partial class Cart : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pim");
                dt.Columns.Add("pname");
                dt.Columns.Add("pprice");
                dt.Columns.Add("dateend");
                dt.Columns.Add("tprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitem"] == null)
                    {
                        int co = int.Parse(Request.QueryString["id"]);
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where ProductID=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["pim"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["pprice"] = Request.QueryString["price"];
                        dr["dateend"] = ds.Tables[0].Rows[0]["ProductDateEnd"].ToString();

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitem"] = dt;

                        GridView1.FooterRow.Cells[5].Text = "Total Price";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                        Response.Redirect("Cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitem"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where ProductID=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr+1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["pim"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["pprice"] = Request.QueryString["price"];
                        dr["dateend"] = ds.Tables[0].Rows[0]["ProductDateEnd"].ToString();

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitem"] = dt;

                        GridView1.FooterRow.Cells[5].Text = "Total Price";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                        Response.Redirect("Cart.aspx");
                    }
                   
                }
                else
                {
                    dt = (DataTable)Session["buyitem"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Price";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }

                }

            }
            }

            public int grandtotal()
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitem"];
                int nr = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while (i < nr)
                {
                    totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["pprice"].ToString());
                    i = i + 1;
                }
                return totalprice;
            }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
           for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if(sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
           for(int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitem"] = dt;
            Response.Redirect("Cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitem"];
            
            string status = "On Progress";
            for(int i = 0; i<=dt.Rows.Count - 1; i++)
            {
                int dr = Convert.ToInt32(dt.Rows[i]["pprice"].ToString());
                int prc = Convert.ToInt32(dr * 1.05);
                string prrc = prc.ToString();
                int id = Convert.ToInt32(dt.Rows[i]["pid"].ToString());

                SqlConnection scon = new SqlConnection("Data Source=.; Initial Catalog=Lelangin; Integrated Security=True");
                scon.Open();
                SqlCommand cmd = new SqlCommand("insert into AfterPay(ProductId,ProductName,ProductBuyPrice,ProductImage,ProductDateEnd,TransactionStatus) values (" + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"] + ",'" + dt.Rows[i]["pim"] + "','" + dt.Rows[i]["dateend"] + "','" + status + "')", scon);
                SqlCommand cma = new SqlCommand("Update Product set ProductCurrentBid=@1 where ProductID=" + id,scon);
                cma.Parameters.AddWithValue("@1", prc);
                cmd.ExecuteNonQuery();
                cma.ExecuteNonQuery();
                scon.Close();
            }

            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your cart is empty. Cannot Checkout');</script>");
            }
            else
            {
                Response.Redirect("Product.aspx");
            }
        }
    }
    }
