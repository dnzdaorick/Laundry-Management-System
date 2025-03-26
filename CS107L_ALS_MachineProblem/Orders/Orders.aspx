<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="Orders.css" rel="stylesheet" type="text/css" />
<div>
    <br />
     <h1 class="headers">Orders</h1>
    <asp:Button ID="AddNewOrderBtn" runat="server" Text="+   Add New Order" CssClass="addOrderBtn" Width="230px" Height="35px" OnClick="AddNewOrderBtn_Click" />
    <asp:Panel ID="Panel1" runat="server" CssClass="whitesquare">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" cssclass="search">
                        <asp:Label ID="Label1" runat="server" Text="Search Here" ></asp:Label>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="Panel3" runat="server" CssClass="orders">
                        <asp:Label ID="Label2" runat="server" Text="All Orders"></asp:Label>
                       <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Down.png" Height="25px" Width="25px" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />
        <div>
    <div style="background-color: lightgray; margin-left: 50px; margin-right: 50px;">
        <span style="margin-left: 30px">ORDER INFO</span>
        <span style="margin-left: 60px;">CUSTOMER</span>
        <span style="margin-left: 30px;">ORDER AMOUNT</span>
        <span style="margin-left: 40px;">STATUS</span>
        <span style="margin-left: 90px;">PAYMENT</span>
        <span style="margin-left: 170px;">SERVICE</span>
    </div>
       
    <div style="width: 1200px; padding: 10px;">
        <span style="margin-left:50px">Order Id:</span>
        <span style="margin-left:5px; font-weight:bold">OORD-006</span>
        <span style="margin-left:45px; font-weight:bold"></span>
        <span style="margin-left:75px; "></span>
        <span style="margin-left:270px;">Total Amount:</span>
        <span style="margin-left:5px; font-weight:bold">Php 234.00</span>
        <span style="margin-left:70px; font-weight:bold"></span>
        
<br />
    
        <span style="margin-left:50px">Order Date:</span>
        <span style="margin-left:5px; font-weight: bold">3/25/25</span>
        <span style="margin-left:45px; font-weight:bold">Dao</span>
        <span style="margin-left:70px; font-weight:bold">Php 600.00</span>
          <span style="margin-left:60px;"><asp:Image ID="Image4" runat="server" ImageUrl="~/images/Pending.png" Height="20px" Width="60px" /></span>
        <span style="margin-left:55px;">Paid Amount:</span>
        <span style="margin-left:5px; font-weight:bold">Php 0.00</span>
        <span style="margin-left:90px;">Wash & Dry <asp:Button ID="ViewButton1" runat="server" Text="View" CssClass="ViewBtn" Width="80px" Height="30px" OnClientClick="ShowViewOrderDetModal(); return false;"/></span>
<br />
         <span style="margin-left:50px">Delivery Date:</span>
         <span style="margin-left:5px; font-weight:bold">3/25/25</span>
        <span style="margin-left:405px;"><asp:Button ID="AddPaymentButton1" runat="server" Text="Add Payment" CssClass="AddPaymentBtn" Height="30px" Width="130px" OnClientClick="ShowAddPaymentModal(); return false;" /></span>
         
        <hr style="border: 1px solid #ddd; margin: 20px 0;" />

        <span style="margin-right:20px;margin-left:20px">Order Id:</span>
        <span style="margin-right:29px; font-weight:bold">OORD-002</span>
        <span style="margin-right:80px; font-weight:bold">WALK IN</span>
        <span style="margin-right:170px; ">Php 420.00</span>
        <span style="margin-right:25px;">Total Amount:</span>
        <span style="margin-right:80px; font-weight:bold">Php 420.00</span>
        <span style="margin-right:30px; font-weight:bold">ADMIN</span>
        
<br />
    
        <span style="margin-right:30px;margin-left:20px">Order Date:</span>
        <span style="margin-right:30px;">1/25/24</span>
        <span style="margin-right:235px; ">101920271</span>
          <span style="margin-right:30px;"><asp:Image ID="Image3" runat="server" ImageUrl="~/images/Pending.png" Height="20px" Width="60px" /></span>
        <span style="margin-right:31px;">Paid Amount:</span>
        <span style="margin-right:100px; font-weight:bold">Php 0.00</span>
        <span style="margin-right:30px;"></span>
<br />
         <span style="margin-right:13px;margin-left:20px">Delivery Date:</span>
         <span style="margin-right:555px;">1/25/24</span>
        <span style="margin-right:30px;"><asp:Button ID="AddPaymentButton2" runat="server" Text="Add Payment" CssClass="AddPaymentBtn" Height="30px" Width="130px" /></span>
         
        <hr style="border: 1px solid #ddd; margin: 20px 0;" />

        <span style="margin-right:20px;margin-left:20px">Order Id:</span>
        <span style="margin-right:29px; font-weight:bold">OORD-002</span>
        <span style="margin-right:80px; font-weight:bold">WALK IN</span>
        <span style="margin-right:170px; ">Php 440.00</span>
        <span style="margin-right:25px;">Total Amount:</span>
        <span style="margin-right:80px; font-weight:bold">Php 440.00</span>
        <span style="margin-right:30px; font-weight:bold">STAFF</span>
        
<br />
    
        <span style="margin-right:30px;margin-left:20px">Order Date:</span>
        <span style="margin-right:30px;">1/25/24</span>
        <span style="margin-right:235px; ">101920271</span>
          <span style="margin-right:25px;"><asp:Image ID="Image8" runat="server" ImageUrl="~/images/Processing.png" Height="20px" Width="70px" /></span>
        <span style="margin-right:31px;">Paid Amount:</span>
        <span style="margin-right:100px; font-weight:bold">Php 0.00</span>
        <span style="margin-right:30px;"></span>
<br />
         <span style="margin-right:13px;margin-left:20px">Delivery Date:</span>
         <span style="margin-right:555px;">1/25/24</span>
        <span style="margin-right:30px;"><asp:Button ID="AddPaymentButton3" runat="server" Text="Add Payment" CssClass="AddPaymentBtn" Height="30px" Width="130px" /></span>

        <hr style="border: 1px solid #ddd; margin: 20px 0;" />

        <span style="margin-right:20px;margin-left:20px">Order Id:</span>
        <span style="margin-right:29px; font-weight:bold">OORD-002</span>
        <span style="margin-right:80px; font-weight:bold">WALK IN</span>
        <span style="margin-right:170px; ">Php 256.00</span>
        <span style="margin-right:25px;">Total Amount:</span>
        <span style="margin-right:80px; font-weight:bold">Php 256.00</span>
        <span style="margin-right:30px; font-weight:bold">STAFF</span>
        
<br />
    
        <span style="margin-right:30px;margin-left:20px">Order Date:</span>
        <span style="margin-right:30px;">1/25/24</span>
        <span style="margin-right:235px; ">101920271</span>
          <span style="margin-right:25px;"><asp:Image ID="Image11" runat="server" ImageUrl="~/images/Delivered.png" Height="20px" Width="70px" /></span>
        <span style="margin-right:31px;">Paid Amount:</span>
        <span style="margin-right:100px; font-weight:bold">Php 0.00</span>
        <span style="margin-right:30px;"></span>
<br />
         <span style="margin-right:13px;margin-left:20px">Delivery Date:</span>
         <span style="margin-right:555px;">1/25/24</span>
        <span style="margin-right:30px;"><asp:Image ID="Image13" runat="server" ImageUrl="~/images/Paid.png" Height="20px" Width="80px" /></span>

        <div class="container">
            <div class="modal fade" id="AddPaymentModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="AddPaymentLabel">Add Payment</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div>
                                <label class="labels">Enter Amount (required):</label>
                            </div>
                        
                            <div>
                                <asp:TextBox ID="AmountTextBox" runat="server" CssClass="fields" placeholder="Enter Amount" TextMode="Number"></asp:TextBox>
                            </div>

                            <br />
                            <br />
                            <br />
                            
                            <div class="total-amount-to-pay">
                                <div class="amount-label">
                                    <label style="color: #2CCD8A">Total Amount to Pay:</label>
                                </div>
                                <div class="amount">
                                    <label>234.00</label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="CancelButton" runat="server" Text="Clear" CssClass="CancelButton" OnClientClick="ClearFields(); return false;"/>
                                <asp:Button ID="SaveBtn" runat="server" Text="Add Payment" CssClass="SaveBtn" OnClientClick="SaveButon(); return false; "/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                <!-- View Order Details -->        

                <div class="modal fade" id="orderModal" tabindex="-1" aria-labelledby="orderModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content p-3">
                            <div class="modal-header">
                                <h5 class="modal-title" id="orderModalLabel">Order Detail</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>

                            <div class="modal-body">
                                <div class="detail-row">
                                    <strong>ID:</strong> <span><b>ORD-006</b></span>
                                    <strong>Order Date:</strong> <span><b>3/25/25</b></span>
                                </div>
                                <div class="detail-row">
                                    <strong>Customer:</strong> <span><b>Dao</b></span>
                                    <strong>Delivery Date:</strong> <span><b>3/25/25</b></span>
                                </div>
                    
                                <div class="detail-row mt-2">
                                    <strong>Service:</strong> <span class="text-primary">Wash & Dry</span>
                                    <strong>Status:</strong> <span class="status-badge">PENDING</span>
                                </div>

                                <div class="detail-row mt-2">
                                    <strong>Color:</strong> 
                                    <div style="width:20px; height:20px; background:black; border:1px solid #ccc;"></div>
                                </div>

                                <div class="mt-3">
                                    <label>Amount:</label>
                                    <div class="amount-box">Php 600.00</div>
                                </div>

                                <div class="mt-2">
                                    <label>Addon:</label>
                                    <input type="text" class="addon-box" value="Php 180.00" readonly>
                                </div>

                                <div class="mt-2">
                                    <label>Discount:</label>
                                    <input type="text" class="discount-box" value="30%" readonly>
                                </div>

                                <div class="detail-row mt-3">
                                    <strong class="text-success">Gross Total:</strong> 
                                    <span class="amount-box">Php 234.00</span>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-primary">Select</button>
                            </div>
                        </div>
                    </div>
                </div>
    </asp:Panel>
</div>

    <!-- JavaScript for Modal -->
    <script>
        function ShowAddPaymentModal() {
            var myModal = new bootstrap.Modal(document.getElementById('AddPaymentModal'));
            myModal.show();
        }
        function ClearFields() {
            var Amount = document.getElementById('<%= AmountTextBox.ClientID %>');
            Amount.value = '';
        }

        function SaveButon() {

            var Amount = document.getElementById('<%= AmountTextBox.ClientID %>');

            if (Amount.value == '') {
                alert('Please fill up the required field.');
            }

            else {
                alert('Payment Successfully Added!');
                Amount.value = '';
                var myModal = new bootstrap.Modal(document.getElementById('AddPaymentModal'));
                myModal.fade();
            }

        }

        function ShowViewOrderDetModal() {
            var myModal = new bootstrap.Modal(document.getElementById('orderModal'));
            myModal.show();
        }
    </script>
</asp:Content>
