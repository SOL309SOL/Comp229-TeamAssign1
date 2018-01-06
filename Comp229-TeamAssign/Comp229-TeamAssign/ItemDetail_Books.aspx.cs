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
    public partial class ItemDetail_Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var item_id = Request.QueryString["Item_Books_id"];
            if (string.IsNullOrEmpty(item_id) || null == Session["FirstName"])
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('Login Please :) ');window.location ='default.aspx';",
                    true);
                return;
            }
            DisplayData();

        }
        private void DisplayData()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString;
            con.Open();

            var item_id = Request.QueryString["Item_Books_id"];

            String strSql = "SELECT * FROM Items_Books Where Item_Books_id = " + item_id;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = strSql;
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds);

            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            SqlDataReader dr = cmd.ExecuteReader();

            dr.Close();
            con.Close();
        }






        protected void Button2_Click(object sender, EventArgs e)
        {
            var item_id = Request.QueryString["Item_Specials_id"];
            Response.Redirect("Cart.aspx?Item_Specials_id=" + item_id);
        }
    }
}