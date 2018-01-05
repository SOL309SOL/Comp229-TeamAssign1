<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Comp229_TeamAssign.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
        <h2>Cart</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" />

            <asp:BoundField DataField="Item_id" HeaderText="Item_id" />
            <asp:BoundField DataField="item_name" HeaderText="Item_Name" />
            <asp:BoundField DataField="item_price" HeaderText="item_price" />
            <asp:BoundField DataField="item_quantity" HeaderText="item_quantity" />
            <asp:ImageField DataImageUrlField="item_imgUrl" HeaderText="item_imgUrl" ControlStyle-Width="100px">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
        
        <asp:Button ID="CartSubmit" runat="server" Text="Submit" OnClick="CartSubmit_OnClick" BackColor="#999999" />

        </div>

</asp:Content>
