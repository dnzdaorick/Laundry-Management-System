<%@ Page Title="ALS | Customer" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="Customers.css" rel="stylesheet" type="text/css"/>
     <br />

     <h1 class="headers">Customers</h1>

     <asp:Button ID="AddNewCustomerButton" runat="server" Text="+   Add New Customer" CssClass="addCustomerBtn" Width="230px" Height="35px" OnClientClick="ShowAddCustomerModal(); return false;" />

    <div class="container">
        <div class="searchCustomer">
            <asp:TextBox ID="searchCustomerTextBox" runat="server" CssClass="searchCustomerTxtBox" placeholder="Search Customer Name"></asp:TextBox>
            <asp:Button ID="SearchCustButton" runat="server" Text="Search" CssClass="SearchCustButton"/>

            <br />
            <br />

            <table>
                <thead>
                    <tr>
                        <th>NAME</th>
                        <th>PHONE NUMBER</th>
                        <th>EMAIL</th>
                        <th>ADDRESS</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John Aldrein</td>
                        <td>09123456789</td>
                        <td>johnaldrein@gmail.com</td>
                        <td>BLK 5 LOT 11 Bembang Subdv</td>
                        <td><asp:Button ID="EditButton1" runat="server" Text="Edit" CssClass="editBtn1" Width="80px" Height="30px" OnClientClick="ShowEdit(); return false;"/></td>
                    </tr>
                    <tr>
                        <td>Joshua</td>
                        <td>09123456789</td>
                        <td>joshua@gmail.com</td>
                        <td>BLK 4 LOT 12 Bembang Subdv</td>
                        <td><button class="edit-btn">EDIT</button></td>
                    </tr>
                    <tr>
                        <td>Ash</td>
                        <td>09123456789</td>
                        <td>ash@gmail.com</td>
                        <td>BLK 3 LOT 13 Bembang Subdv</td>
                        <td><button class="edit-btn">EDIT</button></td>
                    </tr>
                    <tr>
                        <td>Kaira</td>
                        <td>09123456789</td>
                        <td>kaira@gmail.com</td>
                        <td>BLK 2 LOT 14 Bembang Subdv</td>
                        <td><button class="edit-btn">EDIT</button></td>
                    </tr>
                    <tr>
                        <td>Dao</td>
                        <td>09123456789</td>
                        <td>dao@gmail.com</td>
                        <td>BLK 1 LOT 15 Bembang Subdv</td>
                        <td><button class="edit-btn">EDIT</button></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="modal fade" id="AddCustomerModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" id="AddCustomerLabel">Add New Customer</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <label class="labels">Customer Last Name (required):</label>
                        </div>
                                
                        <div>
                            <asp:TextBox ID="CustLnameTextBox" runat="server" CssClass="fields" placeholder="Enter Last Name"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <label class="labels">Customer Given Name (required):</label>
                        </div>
        
                        <div>
                            <asp:TextBox ID="CustGnameTextBox" runat="server" CssClass="fields" placeholder="Enter Given Name"></asp:TextBox>
                        </div>
                        <br />


                        <div>
                            <label class="labels">Phone Number (required):</label>
                        </div>

                        <div>
                            <asp:TextBox ID="PhNumberTextBox" runat="server" CssClass="fields" placeholder="Enter Phone Number"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <label class="labels">Email:</label>
                        </div>

                        <div>
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="fields" placeholder="Enter Email"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <label class="labels">Address:</label>
                        </div>

                        <div>
                            <asp:TextBox ID="adressTextBox" runat="server" CssClass="fields" placeholder="Enter Address"></asp:TextBox>
                        </div>

                        <br />
                        <br />
                       
                        <div class="modal-footer">
                            <asp:Button ID="CancelCustButton" runat="server" Text="Clear" CssClass="ClearCustBtn" OnClientClick="ACClearFields(); return false;"/>
                            <asp:Button ID="SaveCusomerBtn" runat="server" Text="Add Customer" CssClass="SaveCustBtn" OnClientClick="ACSaveButon(); return false; "/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="EditCustomerModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" id="EditCustomerLabel">Edit Customer</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <label class="labels">Customer Last Name (required):</label>
                        </div>
                        
                        <div>
                            <asp:TextBox ID="EditLnameTextBox" runat="server" CssClass="fields" placeholder="Enter Last Name"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <label class="labels">Customer Given Name (required):</label>
                        </div>

                        <div>
                            <asp:TextBox ID="EditGnameTextBox" runat="server" CssClass="fields" placeholder="Enter Given Name"></asp:TextBox>
                        </div>
                        <br />


                        <div>
                            <label class="labels">Phone Number (required):</label>
                        </div>

                        <div>
                            <asp:TextBox ID="EditPhNumTextBox" runat="server" CssClass="fields" placeholder="Enter Phone Number"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <label class="labels">Email:</label>
                        </div>

                        <div>
                            <asp:TextBox ID="EditEmailTextBox" runat="server" CssClass="fields" placeholder="Enter Email"></asp:TextBox>
                        </div>
                        <br />

                        <div>
                            <label class="labels">Address:</label>
                        </div>

                        <div>
                            <asp:TextBox ID="EditAddTextBox" runat="server" CssClass="fields" placeholder="Enter Address"></asp:TextBox>
                        </div>

                        <br />
                        <br />
               
                        <div class="modal-footer">
                            <asp:Button ID="cancelEditButton" runat="server" Text="Clear" CssClass="ClearCustBtn" OnClientClick="ClearFields(); return false;"/>
                            <asp:Button ID="saveEditButton" runat="server" Text="Save" CssClass="SaveCustBtn" OnClientClick="SaveButon(); return false; "/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- JavaScript for Modal -->
    <script>
        function ShowAddCustomerModal() {
            var myModal = new bootstrap.Modal(document.getElementById('AddCustomerModal'));
            myModal.show();
        }
        function ACClearFields() {
            var custLName = document.getElementById('<%= CustLnameTextBox.ClientID %>');
            custLName.value = '';

            var custGName = document.getElementById('<%= CustGnameTextBox.ClientID %>');
            custGName.value = '';

            var phNumber = document.getElementById('<%= PhNumberTextBox.ClientID %>');
            phNumber.value = '';

            var email = document.getElementById('<%= EmailTextBox.ClientID %>');
            email.value = '';

            var address = document.getElementById('<%= adressTextBox.ClientID %>');
            address.value = '';
        }

        function ACSaveButon() {

            var custLName = document.getElementById('<%= CustLnameTextBox.ClientID %>');
            var custGName = document.getElementById('<%= CustGnameTextBox.ClientID %>');
            var phNumber = document.getElementById('<%= PhNumberTextBox.ClientID %>');
            var email = document.getElementById('<%= EmailTextBox.ClientID %>');
            var address = document.getElementById('<%= adressTextBox.ClientID %>');

            if (custLName.value == '' || custGName.value == '' || phNumber.value == '') {
                alert('Please fill up the required fields.');
            }

            else {
                alert('New Customer Added!');
            }

        }

        function ShowEdit() {
            var myModal = new bootstrap.Modal(document.getElementById('EditCustomerModal'));
            myModal.show();

        }

        function ECClearFields() {

        }

        function ECSaveButon() {

        }
    </script>
</asp:Content>
