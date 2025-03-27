<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="POS.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="POS.css" rel="stylesheet" type="text/css"/>
   <div class="title-frame">
       <label class="title-label">Point of Sales</label> 
   </div>
    <div class="container">
        <div class="category-container">
            <div class="search-bar">
                <label class="normal-text">Search</label>
            </div>
            <div class="categories-frame">
                <div class="category-box">
                    <div class="icon-text">
                        <asp:ImageButton ID="ClothesImgBtn" ImageUrl="~/images/shirt.png" CssClass="image-button" runat="server" OnClientClick="ShowSelectServiceModal(); return false;"/> 
                        <label class="normal-text"></label>
                    </div>
                </div>
            </div>
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
