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
                dt.Columns.Add("Item_Specials_id");
                dt.Columns.Add("Name");
                dt.Columns.Add("Price");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("ImgUrl");
                dt.Columns.Add("totalcost");

                if (Request.QueryString["Item_Specials_id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();

                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString;
                        con.Open();
                        String myquery = "select * from Items_Specials where Item_Specials_id=" + Request.QueryString["Item_Specials_id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["Item_Specials_id"] = ds.Tables[0].Rows[0]["Item_Specials_id"].ToString();
                        dr["Name"] = ds.Tables[0].Rows[0]["Name"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Quantity"] = ds.Tables[0].Rows[0]["Quantity"].ToString();

                        dr["ImgUrl"] = ds.Tables[0].Rows[0]["ImgUrl"].ToString();
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
                        con.ConnectionString = ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString;
                        con.Open();
                        String myquery = "select * from Items_Specials where Item_Specials_id=" + Request.QueryString["Item_Specials_id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["Item_Specials_id"] = ds.Tables[0].Rows[0]["Item_Specials_id"].ToString();
                        dr["Name"] = ds.Tables[0].Rows[0]["Name"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Quantity"] = ds.Tables[0].Rows[0]["Quantity"].ToString();

                        dr["ImgUrl"] = ds.Tables[0].Rows[0]["ImgUrl"].ToString();
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
            ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Booked Successfully! Come to Platform 9 3/4 of Kings Cross in London and pick them up. Thank you. Have a good day! :9 '); window.location ='default.aspx';",
                true);
            return;
        }
    }
}