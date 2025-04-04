<%@ Page Title="ALS | Home" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="Dashboard.css" rel="stylesheet" type="text/css" />
    <div class="dashboard-main-frame">
        <div class="title-frame">
            <label class="title-label">Dashboard</label>
        </div>
        <div class="dashboard-frame">
            <div class="status-frame">
                <div class="status-container">
                    <div class="status-box">
                        <div class="status-label-container">
                            <div class="status-label-frame">
                                <label>PENDING ORDERS</label>
                            </div>
                            <div class="status-value-frame">
                                <div class="icon-frame">
                                    <img src="../images/Basket.png" class="icon" />
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="lblPendingOrders" runat="server" Text="0" />
                    </div>
                    <div class="status-box">
                        <div class="status-label-container">
                            <div class="status-label-frame">
                                <label>PROCESSING ORDERS</label>
                            </div>
                            <div class="status-value-frame">
                                <div class="icon-frame">
                                    <img src="../images/Basket.png" class="icon" />
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="lblProcessingOrders" runat="server" Text="0" />
                    </div>
                    <div class="status-box">
                        <div class="status-label-container">
                            <div class="status-label-frame">
                                <label>READY TO DELIVER</label>
                            </div>
                            <div class="status-value-frame">
                                <div class="icon-frame">
                                    <img src="../images/Basket.png" class="icon" />
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="lblReadyToDeliver" runat="server" Text="0" />
                    </div>
                    <div class="status-box">
                        <div class="status-label-container">
                            <div class="status-label-frame">
                                <label>DELIVERED ORDER</label>
                            </div>
                            <div class="status-value-frame">
                                <div class="icon-frame">
                                    <img src="../images/Basket.png" class="icon" />
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="lblDeliveredOrders" runat="server" Text="0" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


