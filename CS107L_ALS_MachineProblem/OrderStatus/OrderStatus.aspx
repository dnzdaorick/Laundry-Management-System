<%@ Page Title="" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="OrderStatus.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="OrderStatus.css" rel="stylesheet" type="text/css" />
<div>
    <br />
     <h1 class="headers">Order Status Screen</h1>
    <asp:Button ID="AddNewOrderBtn" runat="server" Text="+   Add New Order" CssClass="addOrderBtn" Width="230px" Height="35px" OnClick="AddNewOrderBtn_Click" />
    
    <asp:Panel ID="Panel1" runat="server" CssClass="whitesquare">
        <br />
        <table>
            <tr>
                <td style="width: 33%; text-align: left; padding-left: 50px;">
                    <asp:Label ID="Label2" runat="server" Text="PENDING" CssClass="Text2"></asp:Label>
                    
                </td>
                <td style="width: 33%; text-align: left; padding-left: 35px;">
                    <asp:Label ID="Label3" runat="server" Text="PROCESSING" CssClass="Text3"></asp:Label>
                   
                </td>
                <td style="width: 33%; text-align: left; padding-left: 40px;">
                    <asp:Label ID="Label4" runat="server" Text="READY TO DELIVER" CssClass="Text4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding-left:23px; padding-bottom:10px; padding-top:15px;">
                    <asp:Panel ID="Panel2" runat="server" CssClass="square1">
                        <br />
                        <table style="width: 100%; table-layout: fixed;">
                            <tr>
                                <td style="font-weight:bold; font-family:Arial; padding-left:15px; text-align: left;">
                                    Walk In
                                </td>
                                <td style="font-weight:bold; font-family:Arial; padding-right:15px;  text-align: right;">
                                    ORD-003
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family:Arial; padding-left:15px; text-align: left;"">
                                    Delivery Date:
                                </td>
                                <td style="font-family:Arial; padding-right:15px; text-align: right;">
                                    1/25/24
                                </td>
                            </tr>
                        </table>
                        <div style="padding-left:15px">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Pants-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Polos-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Towels-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                        </div>
                    </asp:Panel>
                </td>
                <td style="padding-left:17px; padding-bottom:10px; padding-top:15px;">
                    <asp:Panel ID="Panel5" runat="server" CssClass="square2">
                        <br />
                        <table style="width: 100%; table-layout: fixed;">
                            <tr>
                                <td style="font-weight:bold; font-family:Arial; padding-left:15px; text-align: left;">
                                    Online
                                </td>
                                <td style="font-weight:bold; font-family:Arial; padding-right:15px;  text-align: right;">
                                    ORD-001
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family:Arial; padding-left:15px; text-align: left;"">
                                    Delivery Date:
                                </td>
                                <td style="font-family:Arial; padding-right:15px; text-align: right;">
                                    1/25/24
                                </td>
                            </tr>
                        </table>
                        <div style="padding-left:15px">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Pants-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Polos-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
   
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="padding-left:23px; padding-bottom:10px;">
                    <asp:Panel ID="Panel3" runat="server" CssClass="square1">
                        <table style="width: 100%; table-layout: fixed;">
                            <br />
                        <tr>
                            <td style="font-weight:bold; font-family:Arial; padding-left:15px; text-align: left;">
                                Walk In
                            </td>
                            <td style="font-weight:bold; font-family:Arial; padding-right:15px;  text-align: right;">
                                ORD-002
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family:Arial; padding-left:15px; text-align: left;"">
                                Delivery Date:
                            </td>
                            <td style="font-family:Arial; padding-right:15px; text-align: right;">
                                1/25/24
                            </td>
                        </tr>
                    </table>
                    <div style="padding-left:15px">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Polos-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/Towels-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/images/Pants-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                    </div>
                    </asp:Panel>
                </td>
                <td style="padding-left:17px; padding-bottom:10px;">
                    <asp:Panel ID="Panel6" runat="server" CssClass="square2">
                        <br />
                        <table style="width: 100%; table-layout: fixed;">
                        <tr>
                            <td style="font-weight:bold; font-family:Arial; padding-left:15px; text-align: left;">
                                Online
                            </td>
                            <td style="font-weight:bold; font-family:Arial; padding-right:15px;  text-align: right;">
                                ORD-004
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family:Arial; padding-left:15px; text-align: left;"">
                                Delivery Date:
                            </td>
                            <td style="font-family:Arial; padding-right:15px; text-align: right;">
                                1/25/24
                            </td>
                        </tr>
                    </table>
                    <div style="padding-left:15px">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Pants-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/images/Polos-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/images/Towels-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                    </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="padding-left:23px;">
                    <asp:Panel ID="Panel4" runat="server" CssClass="square1">
                        <br />
                        <table style="width: 100%; table-layout: fixed;">
                        <tr>
                            <td style="font-weight:bold; font-family:Arial; padding-left:15px; text-align: left;">
                                Walk In
                            </td>
                            <td style="font-weight:bold; font-family:Arial; padding-right:15px;  text-align: right;">
                                ORD-005
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family:Arial; padding-left:15px; text-align: left;"">
                                Delivery Date:
                            </td>
                            <td style="font-family:Arial; padding-right:15px; text-align: right;">
                                1/25/24
                            </td>
                        </tr>
                    </table>
                    <div style="padding-left:15px">
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/images/Pants-clear.png" Height="40px" Width="40px" ImageAlign="Left" />
                         </div>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</div>
</asp:Content>
