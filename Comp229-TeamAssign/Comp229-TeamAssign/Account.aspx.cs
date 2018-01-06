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
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            //DisplayData();

        }
        private void DisplayData()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString;
            con.Open();

            var firstName = Request.QueryString["FirstName"];

            String strSql = "SELECT * FROM Customers Where FirstName = " + firstName;

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