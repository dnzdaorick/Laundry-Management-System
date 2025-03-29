using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace CS107L_ALS_MachineProblem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected HtmlGenericControl categoriesFrame;
        protected HtmlGenericControl servicesCategoryFrame;
        protected HtmlGenericControl customersContainerFrame;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                LoadServiceCategoriesData();
                LoadCustomerData();
                GenerateCategories();
                GenerateServiceCategories();
                GenerateCustomers();
                SetLastOrderCode();
            }
        }

        private void LoadData()
        {
            DataAccess dataAccess = new DataAccess();
            DataTable dt = dataAccess.GetData("SELECT * FROM service_type");
            ViewState["ServiceTypeData"] = dt;
        }

        private void LoadServiceCategoriesData()
        {
            DataAccess dataAccess = new DataAccess();
            DataTable dt = dataAccess.GetData("SELECT * FROM service_category");
            ViewState["ServiceCategoryData"] = dt;
        }
        private void LoadCustomerData()
        {
            DataAccess dataAccess = new DataAccess();
            DataTable dt = dataAccess.GetData("SELECT * FROM customers"); // Assuming the table name is 'customers'
            ViewState["CustomerData"] = dt;
        }

        private void GenerateCustomers()
        {
            DataTable dt = ViewState["CustomerData"] as DataTable;
            if (dt != null)
            {
                foreach (DataRow row in dt.Rows)
                {
                    string customerName = row["customer_name"].ToString();
                    string imageUrl = $"../images/Profile.png";

                    // Create customer box div  
                    HtmlGenericControl customerBox = new HtmlGenericControl("div");
                    customerBox.Attributes["class"] = "services-category-box";
                    customerBox.Attributes["onclick"] = "selectCustomerBox(this);";

                    // Create icon-text div  
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create RadioButton  
                    RadioButton radioButton = new RadioButton();
                    radioButton.GroupName = "CustomerGroup";
                    radioButton.CssClass = "radio-button";
                    radioButton.Attributes["onclick"] = "selectCustomer(this);";

                    // Create Image  
                    HtmlImage image = new HtmlImage();
                    image.Src = imageUrl;
                    image.Attributes["class"] = "image";

                    // Create label  
                    Label label = new Label();
                    label.CssClass = "normal-text";
                    label.Text = customerName;

                    // Add controls to icon-text div  
                    iconText.Controls.Add(image);
                    iconText.Controls.Add(label);
                    iconText.Controls.Add(radioButton);

                    // Add icon-text div to customer box div  
                    customerBox.Controls.Add(iconText);

                    // Add customer box div to customersContainerFrame  
                    customersContainerFrame.Controls.Add(customerBox);
                }
            }
        }

        private void GenerateCategories()
        {
            DataTable dt = ViewState["ServiceTypeData"] as DataTable;
            if (dt != null)
            {
                foreach (DataRow row in dt.Rows)
                {
                    string categoryName = row["service_type_name"].ToString();
                    string imageUrl = $"../images/{categoryName}.png";

                    // Create category box div
                    HtmlGenericControl categoryBox = new HtmlGenericControl("div");
                    categoryBox.Attributes["class"] = "services-category-box";
                    categoryBox.Attributes["onclick"] = "selectCategoryBox(this);";

                    // Create icon-text div
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create RadioButton
                    RadioButton radioButton = new RadioButton();
                    radioButton.GroupName = "CategoryGroup";
                    radioButton.CssClass = "radio-button";
                    radioButton.Attributes["onclick"] = "selectCategory(this);";

                    // Create Image
                    HtmlImage image = new HtmlImage();
                    image.Src = imageUrl;
                    image.Attributes["class"] = "image";

                    // Create label
                    Label label = new Label();
                    label.CssClass = "normal-text";
                    label.Text = categoryName;

                    // Add controls to icon-text div
                    iconText.Controls.Add(image);
                    iconText.Controls.Add(label);
                    iconText.Controls.Add(radioButton);

                    // Add icon-text div to category box div
                    categoryBox.Controls.Add(iconText);

                    // Add category box div to categoriesFrame
                    categoriesFrame.Controls.Add(categoryBox);
                }
            }
        }

        private void GenerateServiceCategories()
        {
            DataTable dt = ViewState["ServiceCategoryData"] as DataTable;
            if (dt != null)
            {
                foreach (DataRow row in dt.Rows)
                {
                    string categoryName = row["service_category_name"].ToString();
                    string imageUrl = $"../images/{categoryName}.png";

                    // Create category box div
                    HtmlGenericControl categoryBox = new HtmlGenericControl("div");
                    categoryBox.Attributes["class"] = "services-category-box";
                    categoryBox.Attributes["onclick"] = "selectServiceCategoryBox(this);";

                    // Create icon-text div
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create RadioButton
                    RadioButton radioButton = new RadioButton();
                    radioButton.GroupName = "ServiceCategoryGroup";
                    radioButton.CssClass = "radio-button";
                    radioButton.Attributes["onclick"] = "selectServiceCategory(this);";

                    // Create Image
                    HtmlImage image = new HtmlImage();
                    image.Src = imageUrl;
                    image.Attributes["class"] = "image";

                    // Create label
                    Label label = new Label();
                    label.CssClass = "normal-text";
                    label.Text = categoryName;

                    // Add controls to icon-text div
                    iconText.Controls.Add(image);
                    iconText.Controls.Add(label);
                    iconText.Controls.Add(radioButton);

                    // Add icon-text div to category box div
                    categoryBox.Controls.Add(iconText);

                    // Add category box div to servicesCategoryFrame
                    servicesCategoryFrame.Controls.Add(categoryBox);
                }
            }
        }




        private void SetLastOrderCode()
        {
            DataAccess dataAccess = new DataAccess();
            DataTable dt = dataAccess.GetData("SELECT TOP 1 order_code FROM orders ORDER BY order_code DESC");
            if (dt.Rows.Count > 0)
            {
                string lastOrderCode = dt.Rows[0]["order_code"].ToString();
                string prefix = "OORD-";
                int lastOrderNumber = int.Parse(lastOrderCode.Replace(prefix, ""));
                int newOrderNumber = lastOrderNumber + 1;
                string newOrderCode = prefix + newOrderNumber.ToString("D3"); // Format as "OORD-XXX"
                orderLabel.Text = newOrderCode;
            }
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