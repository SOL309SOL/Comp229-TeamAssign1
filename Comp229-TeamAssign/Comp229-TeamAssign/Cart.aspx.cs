using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
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
                dt.Columns.Add("item_id");
                dt.Columns.Add("item_name");
                dt.Columns.Add("item_price");
                dt.Columns.Add("item_quantity");
                dt.Columns.Add("item_imgUrl");
                dt.Columns.Add("totalcost");

                if (Request.QueryString["item_id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();

                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = ConfigurationManager.ConnectionStrings["Login"].ConnectionString;
                        con.Open();
                        String myquery = "select * from items1 where item_id=" + Request.QueryString["item_id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["item_id"] = ds.Tables[0].Rows[0]["item_id"].ToString();
                        dr["item_name"] = ds.Tables[0].Rows[0]["item_name"].ToString();
                        dr["item_price"] = ds.Tables[0].Rows[0]["item_price"].ToString();
                        dr["item_quantity"] = ds.Tables[0].Rows[0]["item_quantity"].ToString();
                        dr["item_imgUrl"] = ds.Tables[0].Rows[0]["item_imgUrl"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = ConfigurationManager.ConnectionStrings["Login"].ConnectionString;
                        con.Open();
                        String myquery = "select * from items1 where item_id=" + Request.QueryString["item_id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["item_id"] = ds.Tables[0].Rows[0]["item_id"].ToString();
                        dr["item_name"] = ds.Tables[0].Rows[0]["item_name"].ToString();
                        dr["item_price"] = ds.Tables[0].Rows[0]["item_price"].ToString();
                        dr["item_quantity"] = ds.Tables[0].Rows[0]["item_quantity"].ToString();
                        dr["item_imgUrl"] = ds.Tables[0].Rows[0]["item_imgUrl"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();


                }

            }
        }

        protected void CartSubmit_OnClick(object sender, EventArgs e)
        {

        }
    }
}