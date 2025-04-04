<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="POS.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <asp:HiddenField ID="hfSelectedCategoryType" runat="server" />
    <asp:HiddenField ID="hfSelectedServiceCategory" runat="server" />
    <asp:HiddenField ID="hfSelectedCustomer" runat="server" />
    <asp:HiddenField ID="hfSelectedWeight" runat="server" />
    <asp:HiddenField ID="hfSelectedColor" runat="server" />
    <asp:HiddenField ID="hfSelectedDeliveryDate" runat="server" />
    <asp:HiddenField ID="hfSelectedRate" runat="server" />

    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <link href="POS.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript">
        function ShowSelectServiceModal() {
            $('#SelectServiceCategoryModal').modal('show');
        }

        function SelectCustomerModal() {
            $('#SelectCustomerModal').modal('show');
        }

        function SearchOnEnter(event) {
            if (event.keyCode === 13) { // Enter key code
                event.preventDefault(); // Prevent default form submission
                return false;
            }
            return true;
        }

        function setSelectedCategoryType(categoryTypeId) {
            document.getElementById('<%= hfSelectedCategoryType.ClientID %>').value = categoryTypeId;
            console.log("Selected Category Type: " + categoryTypeId);
            ShowSelectServiceModal();
        }

        function FilterCategories() {
            var input = document.getElementById('<%= SearchTextBox.ClientID %>').value.toLowerCase();
            var categories = document.getElementsByClassName('service-type-box');
            for (var i = 0; i < categories.length; i++) {
                var category = categories[i];
                var label = category.getElementsByClassName('normal-text')[0].innerText.toLowerCase();
                if (label.includes(input)) {
                    category.style.display = '';
                } else {
                    category.style.display = 'none';
                }
            }
        }

        function FilterPopupCategories() {
            var input = document.getElementById('<%= TextBox1.ClientID %>').value.toLowerCase();
            var categories = document.getElementsByClassName('services-category-box');
            for (var i = 0; i < categories.length; i++) {
                var category = categories[i];
                var label = category.getElementsByClassName('normal-text')[0].innerText.toLowerCase();
                if (label.includes(input)) {
                    category.style.display = '';
                } else {
                    category.style.display = 'none';
                }
            }
        }

        function FilterCustomers() {
            var input = document.getElementById('<%= TextBox2.ClientID %>').value.toLowerCase();
            var customers = document.getElementsByClassName('customer-box');
            for (var i = 0; i < customers.length; i++) {
                var customer = customers[i];
                var label = customer.getElementsByClassName('normal-text')[0].innerText.toLowerCase();
                if (label.includes(input)) {
                    customer.style.display = '';
                } else {
                    customer.style.display = 'none';
                }
            }
        }

        function UpdateCalendarLabel() {
            var dateInput = document.getElementById('date-input');
            var calendarLabel = document.getElementById('calendar-label');
            calendarLabel.innerText = dateInput.value;
        }

        function LoadServiceCategories(categoryName) {
            __doPostBack('LoadServiceCategories', categoryName);
        }
    </script>

    <div class="title-frame">
        <label class="title-label">Point of Sales</label> 
    </div>
    <div class="container">
        <div class="category-container">
            <div class="search-frame">
                <asp:TextBox ID="SearchTextBox" runat="server" CssClass="search-bar" onkeyup="FilterCategories()" onkeypress="return SearchOnEnter(event)" placeholder="Search Here"></asp:TextBox>
            </div>
            <div class="categories-frame" runat="server" id="categoriesFrame"></div>
        </div>
        <div class="pos-container">
            <div class="pos-main-frame">
                <div class="customer-frame">
                    <div class="select-customer-frame">
                        <asp:Button ID="SelectedCustomerButton" runat="server" CssClass="select-customer" Text="Select Customer" OnClientClick="SelectCustomerModal(); return false;"></asp:Button>
                    </div>
                    <div class="add-button">
                        <asp:ImageButton ID="PlusImageButton" ImageUrl="../images/Plus.png" CssClass="plus-image" runat="server" OnClientClick="return false;"></asp:ImageButton>
                        <label class="table-text-bold-white">ADD</label>
                    </div>
                </div>
                <div class="order-id-and-date-container">
                    <div class="order-id-container">
                        <div class="order-id-label-frame">
                            <asp:Label ID="orderLabel" runat="server" CssClass="order-id-label"></asp:Label>
                        </div>
                    </div>
                    <div class="calender-container">
                        <input type="date" id="date-input" class="calendar-icon" onchange="UpdateCalendarLabel()" />
                        <label id="calendar-label" class="calendar-label">Delivery Date</label>
                    </div>
                </div>
                <div class="table-container">
                    <div class="meta-data-container">
                        <div class="meta-data-frame">
                            <div class="service-meta-data">
                                <label class="table-text">SERVICE</label>
                            </div>
                            <div class="service-meta-data">
                                <label class="table-text">COLOR</label>
                            </div>
                            <div class="service-meta-data">
                                <label class="table-text">RATE /KG</label>
                            </div>
                            <div class="service-meta-data">
                                <label class="table-text">WEIGHT</label>
                            </div>.
                        </div>
                    </div>
                    <div class="data-container" runat="server" id="dataContainer"></div>
                </div>
                <div class="footer-frame">
                    <div class="total-and-save-button-frame">
                        <div class="total-frame">
                            <div class="gross-label-container">
                                <label clas="gross-label">Gross Total</label>
                            </div>
                            <div class="gross-label-container">
                                <label class="currency-label">700.00</label>
                            </div>
                        </div>
                        <div class="button-frame">
                            <div class="button-frame">
                               <asp:Button ID="ClearButton" runat="server" CssClass="clear-button" Text="Clear" OnClick="ClearSelections_Click" />
                               <asp:Button ID="SaveButton" runat="server" CssClass="save-button" Text="Save and Continue" OnClick="SaveOrder_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<!-- Service Category Modal-->
<div class="modal fade" id="SelectServiceCategoryModal" tabindex="-1" role="dialog" aria-labelledby="SelectServiceCategoryModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="SelectServiceCategoryModalLabel">Select A Service</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="popup-search-bar" onkeyup="FilterPopupCategories()" onkeypress="return SearchOnEnter(event)" placeholder="Search Here"></asp:TextBox>
                <div class="services-category-frame" runat="server" id="servicesCategoryFrame"></div>
            </div>
            <div class="modal-footer">
                <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-secondary" Text="Cancel" data-dismiss="modal" />
                <asp:Button ID="SelectButton" runat="server" CssClass="btn btn-primary" Text="Select" OnClick="SelectServiceCategory_Click"/>
            </div>
        </div>
    </div>
</div>

<!-- Select Customer Modal-->
<div class="modal fade" id="SelectCustomerModal" tabindex="-1" role="dialog" aria-labelledby="SelectCustomerModalLabel" aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="SelectCustomerModalLabel">Select A Customer</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="popup-search-bar" onkeyup="Filtercustomers_page()" onkeypress="return SearchOnEnter(event)" placeholder="Search Here"></asp:TextBox>
                        <div class="services-category-frame" id="customersContainerFrame" runat="server"></div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
            <div class="modal-footer">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="Cancel" data-dismiss="modal" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Select" OnClick="SelectCustomer_Click"/>
            </div>
        </div>
    </div>
</div>
</asp:Content>
