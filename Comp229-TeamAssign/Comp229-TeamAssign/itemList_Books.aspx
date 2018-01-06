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
        <h1 style="font-family: Tekton Pro Cond;">Books</h1>
        <img src="img/harry_pen.png" width="13%"/><br />


      

        <div class="itemList">
            <asp:Repeater ID="CharacterList" runat="server" DataSourceID="SqlDataSource_Books">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <a href='<%# Eval("Item_Books_id", "ItemDetail_Books.aspx?Item_Books_id={0}") %>'>
                        <div class="characterBlock">
                            <div class="innerHover">
                                <%# Eval("Name") %>
                                <asp:Image ID="itemImg" runat="server" Width="40%" ImageUrl='<%# Eval("ImgUrl") %>' />
                                <br />
                            </div>
                        </div>
                    </a>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource_Books" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Items_Books]"></asp:SqlDataSource>
        </div>

    
    </div>
</asp:Content>