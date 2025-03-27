using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS107L_ALS_MachineProblem
{
	public partial class LoginSignUp : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void SignUpbtn_Click(object sender, EventArgs e)
        {
			Response.Redirect("Dashboard/Dashboard.aspx");
        }
    }
}