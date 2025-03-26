<%@ Page Title="ALS | Home" Language="C#" MasterPageFile="../Master/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="Dashboard.css" rel="stylesheet" type="text/css" />
    <div>
        <br />
        <h1 class="headers">Dashboard</h1>
        <table>
            <tr>
                <td>
                    <asp:Panel ID="square1" runat="server" CssClass="squares">
                        <br />
                        <br />
                        <table style="width:180px">
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="Label1" runat="server" Text="PENDING ORDERS" Width="70px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Icons.png" Height="40px" Width="40px" ImageAlign="Right" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="labelone" runat="server" Text="3" Width="20px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="square2" runat="server" CssClass="squares">
                        <br />
                        <br />
                        <table style="width:180px">
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="Label2" runat="server" Text="PROCESSING ORDERS" Width="70px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Icons (1).png" Height="40px" Width="40px" ImageAlign="Right" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="labeltwo" runat="server" Text="2" Width="20px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="square3" runat="server" CssClass="squares">
                        <br />
                        <br />
                        <table style="width:180px">
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="Label3" runat="server" Text="READY TO DELIVER" Width="100px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Icons (2).png" Height="40px" Width="40px" ImageAlign="Right" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="labelthree" runat="server" Text="0" Width="20px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="square4" runat="server" CssClass="squares">
                        <br />
                        <br />
                        <table style="width:180px">
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="Label4" runat="server" Text="DELIVERED ORDERS" Width="70px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Icons (3).png" Height="40px" Width="40px" ImageAlign="Right" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:15px">
                                    <asp:Label ID="labelfour" runat="server" Text="1" Width="20px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="vertical-align: top;">
                    <asp:Panel ID="timesquare" runat="server" CssClass="smallsquare">
                        <br />
                        <table style="width:150px">
                            <tr>
                                <td style="padding-left:30px">
                                    <asp:Image ID="date_icon" runat="server" ImageUrl="~/images/Date.png" Height="20px" Width="20px" />
                                </td>
                                <td>
                                    <asp:Label ID="date" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left:30px">
                                    <asp:Image ID="time_icon" runat="server" ImageUrl="~/images/Time.png" Height="20px" Width="20px" />
                                </td>
                                <td>
                                    <asp:Label ID="time" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Panel ID="bigsquare" runat="server" CssClass="bottomlargesquare">
                            <br />
                            <h1 style="margin-left:20px">Recent Orders</h1>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Panel ID="orderpanel1" runat="server" CssClass="ordersquares">
                                            <br />
                                            <table style="width:220px">
                                                <tr>
                                                    <td style="padding-left:20px">
                                                        <asp:Label ID="Label5" runat="server" Text="Walk In" Width="80px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: right">
                                                        <asp:Label ID="Label6" runat="server" Text="ORD-001" Width="80px"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr><td></td></tr>
                                                <tr><td></td></tr>
                                                <tr>
                                                    <td style="padding-left:20px">
                                                        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Polos.png" Height="40px" Width="40px" ImageAlign="Left" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="orderpanel2" runat="server" CssClass="ordersquares">
                                            <br />
                                            <table style="width:220px">
                                                <tr>
                                                    <td style="padding-left:20px">
                                                        <asp:Label ID="Label7" runat="server" Text="Online" Width="80px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: right">
                                                        <asp:Label ID="Label8" runat="server" Text="ORD-002" Width="80px"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr><td></td></tr>
                                                <tr><td></td></tr>
                                                <tr>
                                                    <td style="padding-left:20px; display: flex; gap: 10px;">
                                                        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Pants.png" Height="40px" Width="40px" ImageAlign="Left" />
                                                        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Polos.png" Height="40px" Width="40px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="orderpanel3" runat="server" CssClass="ordersquares">
                                            <br />
                                            <table style="width: 220px;">
                                                <tr>
                                                    <td style="padding-left: 20px; padding-right: 5px; text-align: left; white-space: nowrap;">
                                                        <asp:Label ID="Label9" runat="server" Text="Walk In"></asp:Label>
                                                    </td>
                                                    <td style="text-align: right; white-space: nowrap;">
                                                        <asp:Label ID="Label10" runat="server" Text="ORD-003"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr><td></td></tr>
                                                <tr><td></td></tr>
                                                <tr>
                                                    <td colspan="2" style="padding-left: 20px; display: flex; gap: 5px;">
                                                        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/Pants.png" Height="40px" Width="40px" />
                                                        <asp:Image ID="Image9" runat="server" ImageUrl="~/images/Polos.png" Height="40px" Width="40px" />
                                                        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Towels.png" Height="40px" Width="40px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td>
                        <asp:Panel ID="smallsquare" runat="server" CssClass="bottomsmallsquare">
                            <br />
                            <h1 style="margin-left:20px">Overview</h1>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
