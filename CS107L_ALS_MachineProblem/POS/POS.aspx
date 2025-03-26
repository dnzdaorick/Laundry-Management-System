<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="POS.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="POS.css" rel="stylesheet" type="text/css"/>
    <style>
        .headers {
            margin-left: 30px;
            font-family:'Arial Rounded MT';
        }
        .container {
            display: flex;
            column-gap: 40px;
            margin-left: 50px;
            margin-top: 50px;
        }
        .leftBox {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            column-gap: 20px;
            border-radius: 20px;
            background-color: white;
            height: 600px;
            width: 700px;
        }
        .rightBox{
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            column-gap: 20px;
            border-radius: 20px;
            background-color: white;
            height: 600px;
            width: 600px;

        }
        .imgBtns {
            width: 100px;
            height: 100px;
            margin-top: 20px;
            margin-left: 40px;
        }
        .Containerheaders {
            font-family: 'Arial Rounded MT';
            margin-top: 20px;
        }
        .labels {
            font-family: 'Arial Rounded MT';
            margin-left: 60px;
            font-weight: bold;
            font-size: 20px;
        }
        .clothes {
            margin-top: 80px;
            background-color: lightgray;
            width: 180px;
            height: 180px;
        }
        .denim {
            margin-top: 80px;
            background-color: lightgray;
            width: 180px;
            height: 180px;
        }
        .towels{
            margin-top: 80px;
            background-color: lightgray;
            width: 180px;
            height: 180px;
        }
        .linens{
            margin-top: 80px;
            background-color: lightgray;
            width: 180px;
            height: 180px;
        }
        .comforter{
            margin-top: 80px;
            background-color: lightgray;
            width: 180px;
            height: 180px;
        }
        .ClearCustBtn {
            border-radius: 10px;
            height: 40px;
            background-color: dimgrey;
            color: white;
            width: 100px;
            border: none;
        }
        .SaveCustBtn {
            border-radius: 10px;
            height: 40px;
            background-color: #05AAEC;
            color: white;
            margin-right: 20px;
            width: 120px;
            border: none;
        }
        .FirstCust{
            margin-left: 6px;
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .SecCust{
            margin-left: 6px;
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .ThirdCust{
            margin-left: 6px;
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .fourthCust{
            margin-left: 6px;
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .fifthCust{
            margin-left: 6px;
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .WashnDry{
            margin-left: 6px;
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .wash{
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .Dry{
            background-color: lightgray;
            width: 130px;
            height: 140px;
        }
        .modal-body {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            column-gap: 20px;
            border-radius: 20px;
            background-color: white;
            height: 300px;
            width: 470px;
        }
        .imgBtnsModal{
            width: 90px;
            height: 90px;
            margin-top: 5px;
            margin-left: 20px;
        }
        .CustImageButton{
            width: 90px;
            height: 90px;
            margin-top: 5px;
            margin-left: 20px;
        }
        .modalLabel-washNdry{
            font-family: 'Arial Rounded MT';
            margin-left: 18px;
            font-weight: bold;
            font-size: 18px;
        }
        .modalLabel-Wash{
            font-family: 'Arial Rounded MT';
            margin-left: 45px;
            font-weight: bold;
            font-size: 18px;
        }
        .modalLabel-Dry{
            font-family: 'Arial Rounded MT';
            margin-left: 50px;
            font-weight: bold;
            font-size: 18px;
        }
        
        .rightBoxheader {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }

        .SelectCustButton {
            background-color: #05AAEC;
            color: white;
            border: none;
            padding: 8px;
            border-radius: 8px;
        }

        .add-btn {
            background-color: #05AAEC;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 8px;
            margin-left: 20px;
        }

        .order-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        .order-id-box {
            background: #ccc;
            padding: 8px;
            border-radius: 5px;
            font-weight: bold;
            width: 100px;
            text-align: center;
        }

        .date-container {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .date-picker {
            border: 1px solid #ccc;
            padding: 5px;
            border-radius: 5px;
        }

        /* Table */
        .table-header, .table-row {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            align-items: center;
        }

        .color-picker {
            width: 25px;
            height: 25px;
            border: none;
        }

        /* Weight Control */
        .weight-control {
            display: flex;
            align-items: center;
        }

        .weight-control button {
            background: #555;
            color: white;
            border: none;
            padding: 5px;
            border-radius: 5px;
            margin: 0 3px;
        }

        /* Footer */
        .total-section {
            text-align: center;
            margin-top: 15px;
        }

        .gross-total {
            font-size: 14px;
            color: green;
            font-weight: bold;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .clear {
            background: red;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 5px;
        }

        .save {
            background: #008cff;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 5px;
        }

    </style>
    <div>
        <br />
         <h1 class="headers">Point of Sales</h1>

            <div class="container">
        
                <div class="leftBox">
                    <div class="clothes">
                        <div>
                            <asp:ImageButton ID="ClothesImgBtn" ImageUrl="~/images/shirt.png" CssClass="imgBtns" runat="server" OnClientClick="ShowSelectServiceModal(); return false;"/> 
                        </div>
                        <div>
                            <label class="labels">Clothes</label>
                        </div>
                    </div>
                    <div class="denim">
                        <div>
                            <asp:ImageButton ID="denimImageButton" ImageUrl="~/images/denim.png" CssClass="imgBtns" runat="server" OnClientClick="ShowSelectServiceModal(); return false;"/> 
                        </div>
                        <div>
                            <label class="labels">Denim</label>
                        </div>
                    </div>
                    <div class="towels">
                        <div>
                            <asp:ImageButton ID="TowelImageButton" ImageUrl="~/images/towel.png" CssClass="imgBtns" runat="server" OnClientClick="ShowSelectServiceModal(); return false;"/> 
                        </div>
                        <div>
                            <label class="labels">Towels</label>
                        </div>
                    </div>
                    <div class="linens">
                        <div>
                            <asp:ImageButton ID="LinenImageButton" ImageUrl="~/images/curtains.png" CssClass="imgBtns" runat="server" OnClientClick="ShowSelectServiceModal(); return false;"/> 
                        </div>
                        <div>
                            <label class="labels">Linens</label>
                        </div>
                    </div>
                    <div class="comforter">
                        <div>
                            <asp:ImageButton ID="comfImageButton" ImageUrl="~/images/comforter.png" CssClass="imgBtns" runat="server" OnClientClick="ShowSelectServiceModal(); return false;"/> 
                        </div>
                        <div>
                            <label style="margin-left: 45px; font-family: 'Arial Rounded MT'; font-weight: bold; 
        font-size: 20px;">Comforter</label>
                        </div>
                    </div>
           
                </div>

                <div class="rightBox">
                    <!-- Customer Selection -->
                    <div class="rightBoxheader">
                        <asp:Button ID="SelectCustButton" runat="server" Text="Select Customer" CssClass="SelectCustButton" OnClientClick="SelectCustomerModal(); return false;"/>
                        <button class="add-btn">+ ADD</button>
                    </div>

                    <!-- Order ID and Date Section -->
                    <div class="order-row">
                        <div class="order-id-box">OORD-007</div>
                        <div class="date-container">
                            <input type="date" class="date-picker" value="2025-03-25">
                            <span class="calendar-icon">📅</span>
                        </div>
                    </div>

                    <!-- Table -->
                    <div class="table">
                        <div class="table-header">
                            <span>SERVICE</span>
                            <span>COLOR</span>
                            <span>RATE /KG</span>
                            <span>WEIGHT</span>
                        </div>

                        <div class="table-row">
                            <span class="service">Denim <a href="#">[Wash & Dry]</a></span>
                            <input type="color" class="color-picker">
                            <input type="text" value="60.00" disabled>
                            <div class="weight-control">
                                <button class="minus">-</button>
                                <input type="text" value="6.00" disabled>
                                <button class="plus">+</button>
                            </div>
                        </div>

                        <div class="table-row">
                            <span class="service">Shirt <a href="#">[Wash & Dry]</a></span>
                            <input type="color" class="color-picker">
                            <input type="text" value="30.00" disabled>
                            <div class="weight-control">
                                <button class="minus">-</button>
                                <input type="text" value="3.00" disabled>
                                <button class="plus">+</button>
                            </div>
                        </div>
                    </div>

                    <!-- Total and Buttons -->
                    <div class="total-section">
                        <span class="gross-total">Gross Total <strong>Php 450.00</strong></span>
                        <div class="buttons">
                            <button class="clear">Clear All</button>
                            <button class="save">Save and Continue</button>
                        </div>
                    </div>
                </div>



                <div class="modal fade" id="SelectServiceModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title" id="AddCustomerLabel">Select a Service</h3>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="WashnDry">
                                    <div>
                                        <asp:ImageButton ID="WashNdryImageButtonModal" ImageUrl="~/images/wash & dry.png" CssClass="imgBtnsModal" runat="server"/> 
                                    </div>
                                    <div>
                                        <label class="modalLabel-washNdry">Wash & Dry</label>
                                    </div>
                                </div>
                                <div class="wash">
                                    <div>
                                        <asp:ImageButton ID="WashImageButtonRight" ImageUrl="~/images/wash.png" CssClass="imgBtnsModal" runat="server"/> 
                                    </div>
                                    <div>
                                        <label class="modalLabel-Wash">Wash</label>
                                    </div>
                                </div>
                                <div class="Dry">
                                    <div>
                                        <asp:ImageButton ID="DryImageButtonRight" ImageUrl="~/images/dry.png" CssClass="imgBtnsModal" runat="server"/> 
                                    </div>
                                    <div>
                                        <label class="modalLabel-Dry">Dry</label>
                                    </div>
                                </div>
                            <div class="modal-footer">
                                <asp:Button ID="CancelCustButton" runat="server" Text="Clear" CssClass="ClearCustBtn" OnClientClick="ACClearFields(); return false;"/>
                                <asp:Button ID="SaveCusomerBtn" runat="server" Text="Select" CssClass="SaveCustBtn" OnClientClick="ACSaveButon(); return false; "/>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <div class="modal fade" id="SelectCustModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="SelectCustomerLabel">Select a Customer</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="FirstCust">
                                <div>
                                    <asp:ImageButton ID="FirstCustImageButton" ImageUrl="~/images/user.png" CssClass="CustImageButton" runat="server"/> 
                                </div>
                                <div>
                                    <label class="firstCustlabel">John Aldrein</label>
                                </div>
                            </div>
                            <div class="SecCust">
                                <div>
                                    <asp:ImageButton ID="secCustImageButton" ImageUrl="~/images/user.png" CssClass="CustImageButton" runat="server"/> 
                                </div>
                                <div>
                                    <label class="secondCustlabel">Joshua</label>
                                </div>
                            </div>
                            <div class="ThirdCust">
                                <div>
                                    <asp:ImageButton ID="thrdCustImageButton" ImageUrl="~/images/user.png" CssClass="CustImageButton" runat="server"/> 
                                </div>
                                <div>
                                    <label class="thirdCustlabel">Ash</label>
                                </div>
                            </div>

                            <div class="fourthCust">
                                <div>
                                    <asp:ImageButton ID="frthCustImageButton" ImageUrl="~/images/user.png" CssClass="CustImageButton" runat="server"/> 
                                </div>
                                <div>
                                    <label class="frthCustlabel">Kaira</label>
                                </div>
                            </div>

                            <div class="fifthCust">
                                <div>
                                    <asp:ImageButton ID="fifthCustImageButton" ImageUrl="~/images/user.png" CssClass="CustImageButton" runat="server"/> 
                                </div>
                                <div>
                                    <label class="fifthCustlabel">Dao</label>
                                </div>
                            </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" Text="Clear" CssClass="ClearCustBtn" OnClientClick="ACClearFields(); return false;"/>
                            <asp:Button ID="Button2" runat="server" Text="Select" CssClass="SaveCustBtn" OnClientClick="ACSaveButon(); return false; "/>
                        </div>
                    </div>
                </div>
            </div>
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
