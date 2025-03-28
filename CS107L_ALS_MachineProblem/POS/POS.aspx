<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="POS.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <script type="text/javascript">
        function SearchOnEnter(event) {
            if (event.keyCode === 13) { // Enter key code
                event.preventDefault(); // Prevent default form submission
                return false;
            }
            return true;
        }

        function FilterCategories() {
            var input = document.getElementById('<%= SearchTextBox.ClientID %>').value.toLowerCase();
            var categories = document.getElementsByClassName('category-box');
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
    </script>
    <link href="POS.css" rel="stylesheet" type="text/css"/>
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
        <div class="pos-container"></div>
    </div>
            
    <script>
        function ShowSelectServiceModal() {
            var myModal = new bootstrap.Modal(document.getElementById('SelectServiceModal'));
            myModal.show();
        }

        function SelectCustomerModal() {
            var myModal = new bootstrap.Modal(document.getElementById('SelectCustModal'));
            myModal.show();
        }
    </script>
</asp:Content>
