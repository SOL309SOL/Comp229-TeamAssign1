<%@ Page Title="Item List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="itemList_Hats.aspx.cs" Inherits="Comp229_TeamAssign.itemList_Hats" %>

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
   <%-- <style type="text/css">
        body, html
        {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
            background-color:crimson;
        }
    </style>--%>
    <div class="itemListMain" align="center">
        <h1 style="font-family: Tekton Pro Cond;">Hats</h1>
        <img src="img/harry_hat.png" width="13%"/><br />


 <%--   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="itemListSource">
        <Columns>
            <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
            <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
            <asp:BoundField DataField="item_price" HeaderText="item_price" SortExpression="item_price" />
            <asp:BoundField DataField="item_quantity" HeaderText="item_quantity" SortExpression="item_quantity" />
            <asp:ImageField DataImageUrlField="item_imgUrl" HeaderText="item_imgUrl" ControlStyle-Width="50px" />        

        </Columns>
    </asp:GridView>--%>

    <div class="itemList">
    <asp:Repeater ID="CharacterList" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            
            <a href='<%# Eval("Item_Specials_id", "ItemDetail.aspx?Item_Specials_id={0}") %>'>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Items_Specials]"></asp:SqlDataSource>
    </div>

<%--    <br/><div class="addItems">
    <asp:Label ID="lblAddItemName" runat="server" Text="Item Name"></asp:Label>
    <asp:TextBox ID="txtAddItemName" runat="server"></asp:TextBox>
    <asp:Label ID="lblAddItemPrice" runat="server" Text="Item Price"></asp:Label>
    <asp:TextBox ID="txtAddItemPrice" runat="server"></asp:TextBox>

    <asp:Label ID="lblAddItemQuantity" runat="server" Text="Item Quantity"></asp:Label>
    <asp:TextBox ID="txtAddItemQuantity" runat="server"></asp:TextBox>

    <asp:Button ID="btnAddItems" runat="server" Text="Button" OnClick="btnAddItems_Click" />
    </div>--%>
        </div>
</asp:Content>
