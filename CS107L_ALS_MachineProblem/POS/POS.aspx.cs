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


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                GenerateCategories();
                LoadServiceCategoriesData();
                GenerateServiceCategories();
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

        private void GenerateCategories()
        {
            DataTable dt = ViewState["ServiceTypeData"] as DataTable;
            if (dt != null)
            {
                foreach (DataRow row in dt.Rows)
                {
                    string categoryName = row["service_type_name"].ToString();
                    string imageUrl = $"../images/{categoryName}.png";
                    System.Diagnostics.Debug.WriteLine(imageUrl);

                    // Create category box div
                    HtmlGenericControl categoryBox = new HtmlGenericControl("div");
                    categoryBox.Attributes["class"] = "category-box";

                    // Create icon-text div
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create ImageButton
                    ImageButton imageButton = new ImageButton();
                    imageButton.ImageUrl = imageUrl;
                    imageButton.CssClass = "image-button";
                    imageButton.OnClientClick = "ShowSelectServiceModal(); return false;";

                    // Create label
                    Label label = new Label();
                    label.CssClass = "normal-text";
                    label.Text = categoryName;

                    // Add controls to icon-text div
                    iconText.Controls.Add(imageButton);
                    iconText.Controls.Add(label);

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
                    categoryBox.Attributes["class"] = "category-box";

                    // Create icon-text div
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create Image
                    HtmlImage image = new HtmlImage();
                    image.Src = imageUrl;
                    image.Attributes["class"] = "image-button";
                    image.Attributes["onclick"] = "ShowSelectServiceModal(); return false;";

                    // Create label
                    Label label = new Label();
                    label.CssClass = "normal-text";
                    label.Text = categoryName;

                    // Add controls to icon-text div
                    iconText.Controls.Add(image);
                    iconText.Controls.Add(label);

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