using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS107L_ALS_MachineProblem
{
	public partial class Site1 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void home_func(object sender, EventArgs e)
		{
            Response.Redirect("Home.aspx");
        }

		protected void pos_func(object sender, EventArgs e)
		{
            Response.Redirect("POS.aspx");
        }

		protected void order_func(object sender, EventArgs e)
		{
            Response.Redirect("Orders.aspx");
        }

        protected void orderstat_func(object sender, EventArgs e)
        {
            Response.Redirect("Orderstat.aspx");

        }

        protected void service_func(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");

        }

        protected void user_func(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }

        protected void reports_func(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");

        }

        protected void home_func(object sender, ImageClickEventArgs e)
        {

        }
    }
}