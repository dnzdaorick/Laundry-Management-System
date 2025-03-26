<%@ Page Title="ALS | Services" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="CS107L_ALS_MachineProblem.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <link href="Services.css" rel="stylesheet" type="text/css"/>
    <br />

    <h1 class="headers">Services</h1>

    <br />
    <div class="container">
        
        <div class="leftBox">
            <h3 class="Containerheaders">Service Types</h3>
            <div class="clothes">
                <div>
                    <asp:ImageButton ID="ClothesImgBtn" ImageUrl="~/images/shirt.png" CssClass="imgBtns " runat="server"/> 
                </div>
                <div>
                    <label class="labels">Clothes</label>
                </div>
            </div>
            <div class="denim">
                <div>
                    <asp:ImageButton ID="denimImageButton" ImageUrl="~/images/denim.png" CssClass="imgBtns" runat="server"/> 
                </div>
                <div>
                    <label class="labels">Denim</label>
                </div>
            </div>
            <div class="towels">
                <div>
                    <asp:ImageButton ID="TowelImageButton" ImageUrl="~/images/towel.png" CssClass="imgBtns" runat="server"/> 
                </div>
                <div>
                    <label class="labels">Towels</label>
                </div>
            </div>
            <div class="linens">
                <div>
                    <asp:ImageButton ID="LinenImageButton" ImageUrl="~/images/curtains.png" CssClass="imgBtns" runat="server"/> 
                </div>
                <div>
                    <label class="labels">Linens</label>
                </div>
            </div>
            <div class="comforter">
                <div>
                    <asp:ImageButton ID="comfImageButton" ImageUrl="~/images/comforter.png" CssClass="imgBtns" runat="server"/> 
                </div>
                <div>
                    <label style="margin-left: 45px; font-family: 'Arial Rounded MT'; font-weight: bold; 
font-size: 20px;">Comforter</label>
                </div>
            </div>
           
        </div>

        <div class="rightBox">
            <h3 class="Containerheaders">Service Category</h3>
            <div class="clothes">
                <div>
                    <asp:ImageButton ID="WashnDryImageButton" ImageUrl="~/images/wash & dry.png" CssClass="imgBtns " runat="server"/> 
                </div>
                <div>
                    <label class="labels">Wash & Dry</label>
                </div>
            </div>
            <div class="denim">
                <div>
                    <asp:ImageButton ID="WashImageButton" ImageUrl="~/images/wash.png" CssClass="imgBtns" runat="server"/> 
                </div>
                <div>
                    <label class="labels">Wash</label>
                </div>
            </div>
            <div class="towels">
                <div>
                    <asp:ImageButton ID="DryImageButton" ImageUrl="~/images/dry.png" CssClass="imgBtns" runat="server"/> 
                </div>
                <div>
                    <label class="labels">Dry</label>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>
