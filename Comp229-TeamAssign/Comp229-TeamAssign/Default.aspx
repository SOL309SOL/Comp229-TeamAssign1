<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamAssign._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
        <div class="col-md-2">
            <div class="menu">
               <a href="ItemList.aspx"><img src="img/harry_hat.png" width="30%"/><br /></a>
               <a href="SignUp.aspx"><img src="img/harry_broom.png" width="30%"/><br /></a>
               <a href="#"><img src="img/harry_pen.png" width="30%"/></a>

            </div>
        </div>

        

        <div class="col-md-8">
            <img src="img/harry_logo3.jpg" width="45%" style="padding-top:2%;"/>
            <div class="description"> 
            Welcome to Harry Potter Library<br />
            Isn't Wizard products expensive?<br />
            Don't you have enough money to afford them?<br />
            You can borrow anything here for free!<br />
            Just sign up our page, and enjoy your shopping.<br />
            </div>
            <asp:Button ID="btnSignUp" cssClass="btn btn-outline-secondary" runat="server" Text="Sign Up!" />
        </div>
        <div class="col-md-2">
            <div class="menu">
                 <a href="#"><img src="img/harry_pot.png" width="20%"/><br /></a>
                <a href="#"><img src="img/harry_snitch.png" width="18%"/><br /></a>
                <a href="#"><img src="img/harry_thunder.png" width="8%"/></a>
            </div>
        </div>
       

    </div>

</asp:Content>
