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
    public partial class SignUp : System.Web.UI.Page
    {
        /// <summary>
        /// This is my page load.
        /// </summary>
        /// <param name="sender">Sending argument</param>
        /// <param name="e">Argument</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Customers where FirstName='" + txtFName.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already Exists");

                }
                conn.Close();

            }
        }
        /// <summary>
        /// This is button for sign-up
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HarryPotter"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Customers (Customer_id, FirstName, LastName, Address, School, Password) values (@id, @FName, @LName, @Address, @School, @Pwd)";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@id", newGUID.ToString());
                com.Parameters.AddWithValue("@FName", txtFName.Text);
                com.Parameters.AddWithValue("@LName", txtLName.Text);
                com.Parameters.AddWithValue("@Address", txtAddress.Text);
                com.Parameters.AddWithValue("@Pwd", txtPwd.Text);
                com.Parameters.AddWithValue("@School", ddlSchool.SelectedItem.ToString());

                com.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registered Successfully')", true);
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
            Response.Redirect("Default.aspx");


        }
    }
}