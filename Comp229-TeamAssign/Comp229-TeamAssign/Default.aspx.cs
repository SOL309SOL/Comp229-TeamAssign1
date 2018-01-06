using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (null != Session["FirstName"])
            {
                Label1.Text = "Welcome! " + Session["FirstName"] + ".<br> Enjoy Magical Library :)";

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}