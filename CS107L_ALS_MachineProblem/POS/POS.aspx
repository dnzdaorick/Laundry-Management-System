<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="POS.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="POS.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
    function ShowSelectServiceModal() {
        var myModal = new bootstrap.Modal(document.getElementById('SelectServiceModal'));
        myModal.show();
    }

    function SelectCustomerModal() {
        var myModal = new bootstrap.Modal(document.getElementById('SelectCustModal'));
        myModal.show();
    }

    function SearchOnEnter(event) {
        if (event.keyCode === 13) { // Enter key code
            event.preventDefault(); // Prevent default form submission
            return false;
        }
        return true;
    }

    function FilterCategories() {
        var input = document.getElementById('<%= SearchTextBox.ClientID %>').value.toLowerCase();
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
        var customers = document.getElementsByClassName('services-category-box');
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

    <div class="main-content">
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
                        <asp:Button runat="server" CssClass="select-customer" Text="Select Customer"></asp:Button>
                        <div class="add-button">
                            <asp:ImageButton ID="PlusImageButton" ImageUrl="../images/Plus.png" CssClass="plus-image" runat="server"></asp:ImageButton>
                            <label class="table-text-bold-white">ADD</label>
                        </div>
                    </div>
                    <div class="order-id-and-date-container">
                        <div class="order-id-container">
                            <asp:Label ID="orderLabel" runat="server" CssClass="order-id-label"></asp:Label>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Service Type Popup-->
            <div class="popup-container">
                <div class="popup-main-frame">
                    <div class="popup-title-frame">
                        <label class="popup-title">Select A Service</label>
                    </div>
                    <div class="popup-line"></div>
                    <div class="popup-search-frame">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="popup-search-bar" onkeyup="FilterPopupCategories()" onkeypress="return SearchOnEnter(event)" placeholder="Search Here"></asp:TextBox>
                    </div>
                    <div class="services-category-frame" runat="server" id="servicesCategoryFrame"></div>
                    <div class="services-footer-frame">
                        <div class="popup-small-line"></div>
                        <div class="services-button-frame">
                            <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" />
                            <asp:Button ID="SelectButton" runat="server" CssClass="button" Text="Select" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- Select A Customer Popup-->
            <div class="popup-container">
                <div class="popup-main-frame">
                    <div class="popup-title-frame">
                        <label class="popup-title">Select A Customer</label>
                    </div>
                    <div class="popup-line"></div>
                    <div class="popup-search-frame">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="popup-search-bar" onkeyup="FilterCustomers()" onkeypress="return SearchOnEnter(event)" placeholder="Search Here"></asp:TextBox>
                    </div>
                    <div class="services-category-frame" id="customersContainerFrame" runat="server"></div>
                    <div class="services-footer-frame">
                        <div class="popup-small-line"></div>
                        <div class="services-button-frame">
                            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Cancel" />
                            <asp:Button ID="Button2" runat="server" CssClass="button" Text="Select" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
