<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="Reports.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="Reports.js"></script>
    <div class="main-frame">
        <div class="title-frame">
            <label class="title-label">Reports</label>
        </div>
        <div class="table-frame">
            <div class="table">
                <div class="date-status-frame">
                    <div class="date-frame">
                        <div class="meta-data-frame">
                            <label class="meta-data-label">Start Date</label>
                        </div>
                        <div class="date-bar">
                            <div class="date-label-frame">
                                <label id="selectedDateLabel" class="data-big-label"></label>
                            </div>
                            <input type="date" id="datePicker" value="<%= DateTime.Now.ToString("yyyy-MM-dd") %>" onchange="updateLabel()"/>
                        </div>
                    </div>
                    <div class="date-frame">
                        <div class="meta-data-frame">
                            <label class="meta-data-label">End Date</label>
                        </div>
                        <div class="date-bar">
                            <div class="date-label-frame">
                                <label id="selectedDateLabel" class="data-big-label"></label>
                            </div>
                            <input type="date" id="datePicker" value="<%= DateTime.Now.ToString("yyyy-MM-dd") %>" onchange="updateLabel()"/>
                        </div>
                    </div>
                </div>
                <div class="table">
                    <div class="meta-data-container">
                        <div class="meta-data-frame">
                            <div class="info-frame">
                                <label class="meta-data-label">DATE</label>
                            </div>
                            <div class="info-frame">
                                <label class="meta-data-label">ORDER ID</label>
                            </div>
                            <div class="info-frame">
                                <label class="meta-data-label">CUSTOMER</label>
                            </div>
                            <div class="info-frame">
                                <label class="meta-data-label">ORDER AMOUNT</label>
                            </div>
                            <div class="info-frame">
                                <label class="meta-data-label">STATUS</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>