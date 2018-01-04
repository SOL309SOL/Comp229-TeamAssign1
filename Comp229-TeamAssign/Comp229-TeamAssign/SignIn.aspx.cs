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
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Button for Login, checking if password is correct, adding value to Session
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Login"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from users where UserName='" + txtLoginName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from users where UserName = '" + txtLoginName.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtLoginPwd.Text)
                {
                    Session["User"] = txtLoginName.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("itemList.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                }

            }
            else
            {
                Response.Write("Username is not correct");
            }
            conn.Close();

        }
    }
}