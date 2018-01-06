<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamAssign._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4 style="border: 1px solid white; border-radius: 10px; margin-right: 5%; padding: 10px; float: right; font-family: Tekton Pro Cond;"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
    <div class="main" align="center">
        <div class="col-md-2">
            <div class="menu">
                
              
                
               <a class="icon" href="itemList_Hats.aspx"><img src="img/harry_hat.png" width="30%"/><br /></a>
                <div class="descIcon">Hats</div>
                <a class="icon" href="itemList_Brooms.aspx"><img src="img/harry_broom.png" width="30%"/><br /></a>
                <div class="descIcon">Brooms</div>
                <a class="icon" href="itemList_Books.aspx"><img src="img/harry_pen.png" width="30%"/></a>
                <div class="descIcon">Books</div>
            </div>
        </div>

        

        <div class="col-md-8">
            <img src="img/harry_logo3.jpg" width="45%" style="padding-top:2%;"/>
            <div class="description"> 
            Welcome to Harry Potter Library<br />
            Are't Wizard products expensive?<br />
            Don't you have enough money to afford them?<br />
            You can borrow anything here for free!<br />
            Just sign up our page, and enjoy your shopping!<br />
            </div>
            <asp:Button ID="btnSignUp" cssClass="button button4" runat="server" Text="Sign Up!"  OnClick="Button1_Click" />
        </div>
        <div class="col-md-2">
            <div class="menu">
                 <a class="icon" href="ItemList_Specials.aspx"><img src="img/harry_pot.png" width="20%"/><br /></a>
                <div class="descIcon">Specials</div>
                <a class="icon" href="SignIn.aspx"><img src="img/harry_snitch.png" width="18%"/><br /></a>
                <div class="descIcon">Account</div>
                <a class="icon" href="Admin.aspx"><img src="img/harry_thunder.png" width="8%"/></a>
                <div class="descIcon">Admin</div>
                </div>
        </div>
       

    </div>

</asp:Content>
