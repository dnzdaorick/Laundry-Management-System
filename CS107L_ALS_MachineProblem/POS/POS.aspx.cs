using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS107L_ALS_MachineProblem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            DataAccess dataAccess = new DataAccess();
            DataTable dt = dataAccess.GetData("SELECT * FROM CUSTOMERS");

            // Bind the data to your controls (e.g., GridView, Repeater, etc.)
            // Example:
            // yourGridView.DataSource = dt;
            // yourGridView.DataBind();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO YourTableName (Column1, Column2) VALUES ('Value1', 'Value2')";
            DataAccess dataAccess = new DataAccess();
            dataAccess.ExecuteQuery(query);

            // Optionally, reload data
            LoadData();
        }
    }
}