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
    public partial class ItemDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var item_id = Request.QueryString["item_id"];
            if (string.IsNullOrEmpty(item_id))
            {
                Response.Redirect("~/Default.aspx");
                return;
            }
            DisplayData();

        }
        private void DisplayData()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Login"].ConnectionString;
            con.Open();

            var item_id = Request.QueryString["item_id"];

            String strSql = "SELECT * FROM items1 Where item_id = " + item_id;

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
    }

}
