<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CS107L_ALS_MachineProblem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALS | Sign Up</title>
    <style>
        body {
    font-family: Arial, Helvetica, sans-serif;
        }
        .container {

        }

        .LeftBlueStrip {
            position: fixed; /* Keeps the div fixed to the screen */
            left: 0; /* Stick to the left edge */
            top: 0; /* Stick to the top edge */
            background-color: #05AAEC;
            height: 100vh;
            width: 3%;
        }
        .logIn {
            position:fixed;
            left: 200px;
            background-color: white;
            height: 100vh;
            width: 60%;
        }
        .RightBlueCube {
            position: fixed; /* Keeps the div fixed to the screen */
            right: 0; /* Stick to the left edge */
            top: 0; /* Stick to the top edge */
            border-top-left-radius: 70px;
            border-bottom-left-radius: 70px;
            background-color: #05AAEC;
            height: 100vh;
            width: 33%;
        }
        .labels {
            margin-left: 5px;
            font-size: 15px;
        }
        .fields {
            border-radius: 8px;
        }
        .button{
            border-radius: 20px;
            margin-left: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="LeftBlueStrip">

            </div>

            <div class="logIn">
                <br />
                <br />

                <h1>Get Started!</h1>
                <p>Already have an account?<asp:HyperLink runat="server" ID="GoToSignIn" Style="margin-left: 15px" NavigateUrl="SignIn.aspx" ForeColor="#05AAEC">Sign In</asp:HyperLink></p>
    
                <br />

                <div class="labels">
                    <label>Username:</label>
                </div>

                <div class="fields">
                    <asp:TextBox ID="uNameTextBox" runat="server" placeholder="Insert Username" Width="400px" Height="30px" CssClass="fields"></asp:TextBox>
                </div>

                <br />

                 <div class="labels">
                     <label>Last Name:</label>
                 </div>

                 <div class="fields">
                     <asp:TextBox ID="lNameTextBox" runat="server" placeholder="Insert Last Name" Width="400px" Height="30px" CssClass="fields"></asp:TextBox>
                 </div>

                 <br />

                <div class="labels">
                    <label>Given Name:</label>
                </div>

                <div class="fields">
                    <asp:TextBox ID="gNameTextBox" runat="server" placeholder="Insert Given Name" Width="400px" Height="30px" CssClass="fields"></asp:TextBox>
                </div>

                <br />

                <div class="labels">
                    <label>Email:</label>
                </div>

                <div class="fields">
                    <asp:TextBox ID="emailTextBox" runat="server" placeholder="Insert Email" Width="400px" Height="30px" CssClass="fields"></asp:TextBox>
                </div>

                <br />

                 <div class="labels">
                     <label>Phone Number:</label>
                 </div>

                 <div class="fields">
                     <asp:TextBox ID="phNumTextBox" runat="server" placeholder="Insert Phone Number" Width="400px" Height="30px" CssClass="fields"></asp:TextBox>
                 </div>

                 <br />

                <div class="labels">
                    <label>Password:</label>
                </div>

                <div class="fields">
                    <asp:TextBox ID="pWordTextBox" runat="server" placeholder="Insert Password" Width="400px" Height="30px" CssClass="fields"></asp:TextBox>
                </div>

                <br />
                <br />

                <asp:Button ID="SignUpbtn" runat="server" Text="Sign Up" BackColor="#05AAEC" ForeColor="White" OnClick="SignUpbtn_Click" Width="150px" Height="35px" BorderStyle="None" CssClass="button" />
            </div>

            <div class="RightBlueCube">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
   
                <center>
                    <img src="images/ALS_logo-removebg-preview.png" width="320px" />
                </center>
            </div>

        </div>
    </form>
</body>
</html>
