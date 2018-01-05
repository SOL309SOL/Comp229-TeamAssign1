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

        }
        protected void btnAddItems_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Login"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into items (item_name, item_price, item_quantity) values (@Iname, @IPrice, @IQty)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@Iname", txtAddItemName.Text);
            com.Parameters.AddWithValue("@IPrice", txtAddItemPrice.Text);
            com.Parameters.AddWithValue("@IQty", txtAddItemQuantity.Text);

            com.ExecuteNonQuery();
            Response.Redirect("~/Admin.aspx");

            CharacterList.DataSource = conn;
            CharacterList.DataBind();

            conn.Close();
        }
    }
}