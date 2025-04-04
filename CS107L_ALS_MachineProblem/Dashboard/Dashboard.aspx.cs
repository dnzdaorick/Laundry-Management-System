using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS107L_ALS_MachineProblem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected Label lblPendingOrders;
        protected Label lblProcessingOrders;
        protected Label lblReadyToDeliver;
        protected Label lblDeliveredOrders;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrderStatusCounts();
            }
        }

        private void LoadOrderStatusCounts()
        {
            DataAccess dataAccess = new DataAccess();

            lblPendingOrders.Text = GetOrderStatusCount(dataAccess, "PENDING").ToString();
            lblProcessingOrders.Text = GetOrderStatusCount(dataAccess, "PROCESSING").ToString();
            lblReadyToDeliver.Text = GetOrderStatusCount(dataAccess, "READY").ToString();
            lblDeliveredOrders.Text = GetOrderStatusCount(dataAccess, "DELIVERED").ToString();
        }

        private int GetOrderStatusCount(DataAccess dataAccess, string status)
        {
            DataTable dt = dataAccess.GetData($"SELECT COUNT(*) AS Count FROM orders WHERE order_status = '{status}'");
            if (dt.Rows.Count > 0)
            {
                return Convert.ToInt32(dt.Rows[0]["Count"]);
            }
            return 0;
        }
    }
}