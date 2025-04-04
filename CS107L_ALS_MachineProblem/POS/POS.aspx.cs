using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Diagnostics;

namespace CS107L_ALS_MachineProblem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected HtmlGenericControl categoriesFrame;
        protected HtmlGenericControl servicesCategoryFrame;
        protected HtmlGenericControl customersContainerFrame;
        protected HtmlGenericControl dataContainer;
        protected int selectedCustomerID;
        protected int selectedServiceTypeId;
        protected int selectedServiceCategoryId;
        protected List<InitialOrder> orders = new List<InitialOrder>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadServiceTypeData();
                LoadServiceCategoriesData();
                LoadCustomerData();
                SetLastOrderCode();
            }

            if (ViewState["ServiceTypeData"] != null)
            {
                GenerateCategories();
            }

            if (ViewState["ServiceCategoryData"] != null)
            {
                GenerateServiceCategories();
            }
            if (ViewState["CustomerData"] != null)
            {
                GenerateCustomers();
            }

            if (IsPostBack)
            {
                if (!string.IsNullOrEmpty(hfSelectedCategoryType.Value))
                {
                    selectedServiceTypeId = int.Parse(hfSelectedCategoryType.Value);
                    Debug.WriteLine($"Selected Category Type: {selectedServiceTypeId}");
                }

                if (!string.IsNullOrEmpty(hfSelectedServiceCategory.Value))
                {
                    selectedServiceCategoryId = int.Parse(hfSelectedServiceCategory.Value);
                    Debug.WriteLine($"Selected Service Category ID: {selectedServiceCategoryId}");
                }

                if (!string.IsNullOrEmpty(hfSelectedCustomer.Value))
                {
                    selectedCustomerID = int.Parse(hfSelectedCustomer.Value);
                    Debug.WriteLine($"Selected Customer ID: {selectedCustomerID}");
                }

                if (!string.IsNullOrEmpty(hfSelectedWeight.Value))
                {
                    decimal selectedWeight = decimal.Parse(hfSelectedWeight.Value);
                    Debug.WriteLine($"Selected Weight: {selectedWeight}");
                }

                if (!string.IsNullOrEmpty(hfSelectedRate.Value))
                {
                    decimal selectedRate = decimal.Parse(hfSelectedRate.Value);
                    Debug.WriteLine($"Selected Rate: {selectedRate}");
                }

            }
        }

        private void LoadServiceTypeData()
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
            DataTable dt = dataAccess.GetData("SELECT * FROM customers");
            ViewState["CustomerData"] = dt;
        }

        private void GenerateCustomers()
        {
            customersContainerFrame = (HtmlGenericControl)UpdatePanel1.FindControl("customersContainerFrame");
            if (customersContainerFrame == null)
            {
                Debug.WriteLine("customersContainerFrame is null");
                return;
            }

            DataTable dt = ViewState["CustomerData"] as DataTable;
            if (dt != null)
            {
                foreach (DataRow row in dt.Rows)
                {
                    string customerName = row["customer_name"].ToString();
                    string customerId = row["customer_id"].ToString(); // Assuming there is a customer_id column
                    string imageUrl = $"../images/Profile.png";

                    // Create customer box div  
                    HtmlGenericControl customerBox = new HtmlGenericControl("div");
                    customerBox.Attributes["class"] = "customer-box";

                    // Create icon-text div  
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create RadioButton  
                    RadioButton radioButton = new RadioButton();
                    radioButton.GroupName = "CustomerGroup";
                    radioButton.CssClass = "radio-button";
                    radioButton.Attributes["customerID"] = customerId;
                    radioButton.Attributes["customerName"] = customerName;

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
                    string categoryTypeId = row["service_type_id"].ToString(); // Assuming there is a service_type_id column
                    string imageUrl = $"../images/{categoryName}.png";

                    // Create category box div
                    HtmlGenericControl categoryBox = new HtmlGenericControl("div");
                    categoryBox.Attributes["class"] = "service-type-box";

                    // Create icon-text div
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create ImageButton
                    ImageButton imageButton = new ImageButton();
                    imageButton.ImageUrl = imageUrl;
                    imageButton.CssClass = "image-button";
                    imageButton.OnClientClick = $"setSelectedCategoryType('{categoryTypeId}'); return false;";

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
            servicesCategoryFrame = (HtmlGenericControl)UpdatePanel1.FindControl("servicesCategoryFrame");
            if (servicesCategoryFrame == null)
            {
                Debug.WriteLine("servicesCategoryFrame is null");
                return;
            }

            DataTable dt = ViewState["ServiceCategoryData"] as DataTable;
            if (dt != null)
            {
                foreach (DataRow row in dt.Rows)
                {
                    string categoryName = row["service_category_name"].ToString();
                    string categoryId = row["service_category_id"].ToString(); // Assuming there is a service_category_id column
                    string imageUrl = $"../images/{categoryName}.png";

                    // Create category box div
                    HtmlGenericControl categoryBox = new HtmlGenericControl("div");
                    categoryBox.Attributes["class"] = "services-category-box";

                    // Create icon-text div
                    HtmlGenericControl iconText = new HtmlGenericControl("div");
                    iconText.Attributes["class"] = "icon-text";

                    // Create RadioButton
                    RadioButton radioButton = new RadioButton();
                    radioButton.GroupName = "ServiceCategoryGroup";
                    radioButton.CssClass = "radio-button";
                    radioButton.Attributes["serviceCategoryID"] = categoryId;
                    radioButton.Attributes["serviceCategoryName"] = categoryName;

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

        protected void SelectCustomer_Click(object sender, EventArgs e)
        {
            string selectedCustomer = GetSelectedCustomer();
            if (!string.IsNullOrEmpty(selectedCustomer))
            {
                Debug.WriteLine($"Selected Customer ID: {selectedCustomer}");
                selectedCustomerID = int.Parse(selectedCustomer);
                ViewState["SelectedCustomerID"] = selectedCustomerID;
            }
            else
            {
                Debug.WriteLine("No customer selected.");
            }
        }

        private string GetSelectedCustomer()
        {
            customersContainerFrame = (HtmlGenericControl)UpdatePanel1.FindControl("customersContainerFrame");
            if (customersContainerFrame == null)
            {
                Debug.WriteLine("customersContainerFrame is null");
                return null;
            }

            foreach (Control control in customersContainerFrame.Controls)
            {
                if (control is HtmlGenericControl customerBox)
                {
                    foreach (Control innerControl in customerBox.Controls)
                    {
                        if (innerControl is HtmlGenericControl iconText)
                        {
                            foreach (Control iconTextControl in iconText.Controls)
                            {
                                if (iconTextControl is RadioButton radioButton && radioButton.Checked)
                                {
                                    return radioButton.Attributes["customerID"];
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        protected void SelectServiceCategory_Click(object sender, EventArgs e)
        {
            string selectedServiceCategory = GetSelectedServiceCategory();
            if (!string.IsNullOrEmpty(selectedServiceCategory))
            {
                Debug.WriteLine($"Selected Service Category ID: {selectedServiceCategory}");
                selectedServiceCategoryId = int.Parse(selectedServiceCategory);
                ViewState["SelectedServiceCategoryID"] = selectedServiceCategoryId;

                // Retrieve the rate from the ViewState
                decimal rate = GetServiceRate(selectedServiceTypeId);

                // Create a new order and add it to the list
                Debug.WriteLine($"rate: {rate}");
                InitialOrder newOrder = new InitialOrder
                {
                    ServiceTypeId = selectedServiceTypeId,
                    ServiceCategoryId = selectedServiceCategoryId,
                    OrderRate = rate,
                };

                // Generate the order rows
                GenerateOrderRows(newOrder);
            }
            else
            {
                Debug.WriteLine("No service category selected.");
            }
        }

        private void GenerateOrderRows(InitialOrder order)
        {
            // Create row container div
            HtmlGenericControl rowContainer = new HtmlGenericControl("div");
            rowContainer.Attributes["class"] = "row-container";

            // Create service data div
            HtmlGenericControl serviceData = new HtmlGenericControl("div");
            serviceData.Attributes["class"] = "service-data";

            // Create service type table container div
            HtmlGenericControl serviceTypeTableContainer = new HtmlGenericControl("div");
            serviceTypeTableContainer.Attributes["class"] = "service-type-table-container";

            // Create service type label
            Label serviceTypeLabel = new Label();
            serviceTypeLabel.CssClass = "service-type-label";
            serviceTypeLabel.Text = GetServiceTypeName(order.ServiceTypeId);

            // Add service type label to service type table container
            serviceTypeTableContainer.Controls.Add(serviceTypeLabel);

            // Create service category table container div
            HtmlGenericControl serviceCategoryTableContainer = new HtmlGenericControl("div");
            serviceCategoryTableContainer.Attributes["class"] = "service-category-table-container";

            // Create service category label
            Label serviceCategoryLabel = new Label();
            serviceCategoryLabel.CssClass = "service-category-label";
            serviceCategoryLabel.Text = GetServiceCategoryName(order.ServiceCategoryId);

            // Add service category label to service category table container
            serviceCategoryTableContainer.Controls.Add(serviceCategoryLabel);

            // Add service type and category containers to service data div
            serviceData.Controls.Add(serviceTypeTableContainer);
            serviceData.Controls.Add(serviceCategoryTableContainer);

            // Create color data div
            HtmlGenericControl colorData = new HtmlGenericControl("div");
            colorData.Attributes["class"] = "color-data";

            // Create color frame div
            HtmlGenericControl colorFrame = new HtmlGenericControl("div");
            colorFrame.Attributes["class"] = "color-frame";

            // Create color picker input
            HtmlInputText colorPicker = new HtmlInputText();
            colorPicker.Attributes["type"] = "color";
            colorPicker.Attributes["id"] = "colorPicker";
            colorPicker.Attributes["name"] = "colorPicker";
            colorPicker.Attributes["value"] = GetSelectedColor();

            // Add color picker to color frame
            colorFrame.Controls.Add(colorPicker);

            // Add color frame to color data
            colorData.Controls.Add(colorFrame);

            // Create rate data div
            HtmlGenericControl rateData = new HtmlGenericControl("div");
            rateData.Attributes["class"] = "rate-data";

            // Create rate data frame div
            HtmlGenericControl rateDataFrame = new HtmlGenericControl("div");
            rateDataFrame.Attributes["class"] = "rate-data-frame";

            // Create rate label frame div
            HtmlGenericControl rateLabelFrame = new HtmlGenericControl("div");
            rateLabelFrame.Attributes["class"] = "rate-label-frame";

            // Create rate label
            Label rateLabel = new Label();
            rateLabel.CssClass = "rate-label";
            rateLabel.Text = order.OrderRate.ToString("0.00");

            // Add rate label to rate label frame
            rateLabelFrame.Controls.Add(rateLabel);

            // Add rate label frame to rate data frame
            rateDataFrame.Controls.Add(rateLabelFrame);

            // Add rate data frame to rate data
            rateData.Controls.Add(rateDataFrame);

            // Create weight data div
            HtmlGenericControl weightData = new HtmlGenericControl("div");
            weightData.Attributes["class"] = "weight-data";

            // Create weight data frame div
            HtmlGenericControl weightDataFrame = new HtmlGenericControl("div");
            weightDataFrame.Attributes["class"] = "weight-data-frame";

            // Create weight button div
            HtmlGenericControl weightButton = new HtmlGenericControl("div");
            weightButton.Attributes["class"] = "weight-button";

            // Create minus button div
            HtmlGenericControl minusButton = new HtmlGenericControl("div");
            minusButton.Attributes["class"] = "minus-button";

            // Create minus ImageButton
            ImageButton minusImageButton = new ImageButton();
            minusImageButton.ImageUrl = "../images/Minus.png";
            minusImageButton.CssClass = "plus-image";
            minusImageButton.OnClientClick = "updateWeightLabel(-0.1); return false;";

            // Add minus ImageButton to minus button div
            minusButton.Controls.Add(minusImageButton);

            // Create weight box frame div
            HtmlGenericControl weightBoxFrame = new HtmlGenericControl("div");
            weightBoxFrame.Attributes["class"] = "weight-box-frame";

            // Create weight label frame div
            HtmlGenericControl weightLabelFrame = new HtmlGenericControl("div");
            weightLabelFrame.Attributes["class"] = "weight-label-frame";

            // Create weight label
            Label weightLabel = new Label();
            weightLabel.CssClass = "weight-label";
            weightLabel.Text = GetSelectedWeight().ToString("0.00");

            // Add weight label to weight label frame
            weightLabelFrame.Controls.Add(weightLabel);

            // Add weight label frame to weight box frame
            weightBoxFrame.Controls.Add(weightLabelFrame);

            // Create plus button div
            HtmlGenericControl plusButton = new HtmlGenericControl("div");
            plusButton.Attributes["class"] = "plus-button";

            // Create plus ImageButton
            ImageButton plusImageButton = new ImageButton();
            plusImageButton.ImageUrl = "../images/Plus.png";
            plusImageButton.CssClass = "plus-image";
            plusImageButton.OnClientClick = "updateWeightLabel(0.1); return false;";

            // Add plus ImageButton to plus button div
            plusButton.Controls.Add(plusImageButton);

            // Add minus button, weight box frame, and plus button to weight button div
            weightButton.Controls.Add(minusButton);
            weightButton.Controls.Add(weightBoxFrame);
            weightButton.Controls.Add(plusButton);

            // Add weight button to weight data frame
            weightDataFrame.Controls.Add(weightButton);

            // Add weight data frame to weight data
            weightData.Controls.Add(weightDataFrame);

            // Add service data, color data, rate data, and weight data to row container
            rowContainer.Controls.Add(serviceData);
            rowContainer.Controls.Add(colorData);
            rowContainer.Controls.Add(rateData);
            rowContainer.Controls.Add(weightData);

            // Add row container to data container
            dataContainer.Controls.Add(rowContainer);
        }




        private string GetServiceTypeName(int serviceTypeId)
        {
            DataTable dt = ViewState["ServiceTypeData"] as DataTable;
            if (dt != null)
            {
                DataRow[] rows = dt.Select($"service_type_id = {serviceTypeId}");
                if (rows.Length > 0)
                {
                    return rows[0]["service_type_name"].ToString();
                }
            }
            return string.Empty;
        }

        private string GetServiceCategoryName(int serviceCategoryId)
        {
            DataTable dt = ViewState["ServiceCategoryData"] as DataTable;
            if (dt != null)
            {
                DataRow[] rows = dt.Select($"service_category_id = {serviceCategoryId}");
                if (rows.Length > 0)
                {
                    return rows[0]["service_category_name"].ToString();
                }
            }
            return string.Empty;
        }


        private decimal GetServiceRate(int categoryTypeId)
        {
            DataTable dt = ViewState["ServiceTypeData"] as DataTable;
            if (dt != null)
            {
                DataRow[] rows = dt.Select($"service_type_id = {categoryTypeId}");
                if (rows.Length > 0)
                {
                    return Convert.ToDecimal(rows[0]["service_rate"]);
                }
            }
            return 0.00m;
        }

        private string GetSelectedColor()
        {
            // Find the color picker control
            HtmlInputControl colorPicker = (HtmlInputControl)FindControl("colorPicker");
            if (colorPicker != null)
            {
                return colorPicker.Value;
            }
            return "#FFFFFF";
        }

        private decimal GetSelectedWeight()
        {
            // Find the weight label control
            Label weightLabel = (Label)FindControl("weightLabel");
            if (weightLabel != null)
            {
                if (decimal.TryParse(weightLabel.Text, out decimal weight))
                {
                    return weight;
                }
            }
            return 0.00m; // Default weight if not found or invalid
        }




        private string GetSelectedServiceCategory()
        {
            servicesCategoryFrame = (HtmlGenericControl)UpdatePanel1.FindControl("servicesCategoryFrame");
            if (servicesCategoryFrame == null)
            {
                Debug.WriteLine("servicesCategoryFrame is null");
                return null;
            }

            foreach (Control control in servicesCategoryFrame.Controls)
            {
                if (control is HtmlGenericControl categoryBox)
                {
                    foreach (Control innerControl in categoryBox.Controls)
                    {
                        if (innerControl is HtmlGenericControl iconText)
                        {
                            foreach (Control iconTextControl in iconText.Controls)
                            {
                                if (iconTextControl is RadioButton radioButton && radioButton.Checked)
                                {
                                    return radioButton.Attributes["serviceCategoryID"];
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        protected void ClearSelections_Click(object sender, EventArgs e)
        {
            // Clear selected customer
            selectedCustomerID = 0;
            ViewState["SelectedCustomerID"] = null;

            // Clear selected service type and category
            selectedServiceTypeId = 0;
            selectedServiceCategoryId = 0;
            ViewState["SelectedServiceCategoryID"] = null;

            // Clear the order list
            orders.Clear();

            // Clear the data container
            dataContainer.Controls.Clear();
        }

        protected void SaveOrder_Click(object sender, EventArgs e)
        {
            string deliveryDate = Request.Form["calendar-label"];
            string orderColor = GetSelectedColor();
            decimal orderWeight = GetSelectedWeight();
            int serviceTypeId = selectedServiceTypeId;
            int serviceCategoryId = selectedServiceCategoryId;
            int customerId = selectedCustomerID;

            Debug.WriteLine($"delivery date: {deliveryDate} \n" +
                            $"order color: {orderColor} \n" +
                            $"order weight: {orderWeight}  \n" +
                            $"service type id: {serviceTypeId}  \n" +
                            $"service category id: {serviceCategoryId}  \n" +
                            $"customer id: {customerId}");

           DataAccess dataAccess = new DataAccess();


            string query = $@"
                INSERT INTO orders (
                    service_type_id, 
                    service_category_id, 
                    customer_id, 
                    order_weight, 
                    delivery_date, 
                    order_color
                ) VALUES (
                    {serviceTypeId}, 
                    {serviceCategoryId}, 
                    {customerId}, 
                    {orderWeight}, 
                    '{deliveryDate}', 
                    '{orderColor}'
                )";
            dataAccess.ExecuteQuery(query);

            Debug.WriteLine("Order saved successfully.");
        }


        // Existing code...
    }
}



