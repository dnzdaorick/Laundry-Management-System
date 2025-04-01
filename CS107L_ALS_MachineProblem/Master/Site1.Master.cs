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

        protected void dashboard_page(object sender, EventArgs e)
		{
            Response.Redirect("../Dashboard/Dashboard.aspx");
        }

		protected void pos_page(object sender, EventArgs e)
		{
            Response.Redirect("../POS/POS.aspx");
        }

		protected void order_page(object sender, EventArgs e)
		{
            Response.Redirect("../Orders/Orders.aspx");
        }

        protected void orderstatus_page(object sender, EventArgs e)
        {
            Response.Redirect("../OrderStatus/OrderStatus.aspx");

        }

        protected void service_page(object sender, EventArgs e)
        {
            Response.Redirect("../Services/Services.aspx");

        }

        protected void user_func(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }

        protected void reports_func(object sender, EventArgs e)
        {
            Response.Redirect("../Reports/Reports.aspx");

        }

        protected void home_func(object sender, ImageClickEventArgs e)
        {

        }
    }
}