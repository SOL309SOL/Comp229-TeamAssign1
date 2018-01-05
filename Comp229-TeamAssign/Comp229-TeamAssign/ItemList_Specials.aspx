<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemList_Specials.aspx.cs" Inherits="Comp229_TeamAssign.ItemList_Specials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
       
        function myFunction() {
            var r = confirm("Is it okay to charge $100,000,000,000,000?");
            if (r == true) {
                return alert("Wow! You are so rich! Marry me!");
            } else {
                return alert("I knew it haha");
            }
        }
    </script>

    <style>
       
        .paper {
            animation: shake 2.5s;
            animation-iteration-count: infinite;
            animation-timing-function:ease-in-out;
        }

        @keyframes shake {
            0% { transform: translate(0px, 0px) rotate(0deg);  }
           
            50% { transform: translate(0px, 7px) rotate(0deg); }
            
            100% { transform: translate(0px, 0px) rotate(0deg); }

        }

        img:hover {
            animation: click 2.5s;
            animation-iteration-count: infinite;
        }

        @keyframes click {
            0% { transform: translate(1px, 1px) rotate(0deg) scale(1.1, 1.1); }
            10% { transform: translate(-1px, -2px) rotate(-1deg) scale(1.1, 1.1); }
            20% { transform: translate(-3px, 0px) rotate(1deg) scale(1.1, 1.1); }
            30% { transform: translate(3px, 2px) rotate(0deg) scale(1.1, 1.1); }
            40% { transform: translate(1px, -1px) rotate(1deg) scale(1.1, 1.1); }
            50% { transform: translate(-1px, 2px) rotate(-1deg) scale(1.1, 1.1); }
            60% { transform: translate(-3px, 1px) rotate(0deg) scale(1.1, 1.1); }
            70% { transform: translate(3px, 1px) rotate(-1deg) scale(1.1, 1.1); }
            80% { transform: translate(-1px, -1px) rotate(1deg) scale(1.1, 1.1); }
            90% { transform: translate(1px, 2px) rotate(0deg) scale(1.1, 1.1); }
            100% { transform: translate(1px, -2px) rotate(-1deg) scale(1.1, 1.1); }

        }


    </style>
    <div class="main" align="center">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
            <p style="border:dotted 2px white; border-radius: 10px;padding: 10px;">Have you ever heard about Poly Juice?<br/>
                We are offering ingredient for Poly Juice<br/>
                If you are interested in, please click below paper
            </p><br/><br/>
            <asp:HyperLink ID="HyperLink1" runat="server" onclick="return myFunction();">
         
            <img class="paper" src="img/polyjuice.jpg" width="250px"/></asp:HyperLink>
            <img src="img/shadow1.png" style="opacity: 0.4; width: 90%;" />
        </div>
        <div class="col-md-4">
            
        </div>
    </div>
</asp:Content>
