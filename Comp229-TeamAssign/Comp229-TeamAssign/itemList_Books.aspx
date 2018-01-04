<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="itemList_Books.aspx.cs" Inherits="Comp229_TeamAssign.itemList_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .body-content {
            padding-left: 15px;
            padding-right: 15px;
            margin-left:4%;
           
        }
        img:hover {
            animation: shake 2.5s;
            animation-iteration-count: infinite;
        }

        @keyframes shake {
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

    <div class="itemListMain" align="center">
        <h1 style="font-family: Tekton Pro Cond;">Hats</h1>
        <img src="img/harry_hat.png" width="13%"/><br />


      

        <asp:SqlDataSource ID="itemListSource" runat="server" ConnectionString="<%$ ConnectionStrings:Login %>" SelectCommand="SELECT * FROM [items1]"></asp:SqlDataSource>
        <div class="itemList">
            <asp:Repeater ID="CharacterList" runat="server" DataSourceID="itemListSource">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <a href='<%# Eval("item_id", "ItemDetail.aspx?item_id={0}") %>'>
                        <div class="characterBlock">
                            <div class="innerHover">
                                <%# Eval("item_name") %>
                                <asp:Image ID="itemImg" runat="server" Width="40%" ImageUrl='<%# Eval("item_imgUrl") %>' />
                                <br />
                            </div>
                        </div>
                    </a>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
        </div>

    
    </div>
</asp:Content>
