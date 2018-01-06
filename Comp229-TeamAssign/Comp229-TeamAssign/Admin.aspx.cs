using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["FirstName"].ToString() == "Admin")
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(),
            //        "alert",
            //        "alert('Only Admin can access this page :) ');window.location ='default.aspx';",
            //        true);
            //    return;
            //}
        }
        protected void btnAddItems_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Items_Specials (Name, Price, Quantity) values (@Name, @Price, @Quantity)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@Name", txtAddItemName.Text);
            com.Parameters.AddWithValue("@Price", txtAddItemPrice.Text);
            com.Parameters.AddWithValue("@Quantity", txtAddItemQuantity.Text);
          
            com.ExecuteNonQuery();
            Response.Redirect("~/Admin.aspx");

            GridView2.DataSource = conn;
            GridView2.DataBind();

            conn.Close();
        }
    }
}