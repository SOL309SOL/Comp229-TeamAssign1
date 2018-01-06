<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Comp229_TeamAssign.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
        <h2>Cart</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" ReadOnly="True" SortExpression="S.No" />

            <asp:BoundField DataField="Item_Specials_id" HeaderText="Item_Specials_id" ReadOnly="True" SortExpression="Item_Specials_id" />

            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="ImgUrl" HeaderText="ImgUrl" SortExpression="ImgUrl" />
        </Columns>
    </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource_Cart" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Items_Specials]"></asp:SqlDataSource>
        
        <asp:Button ID="CartSubmit" runat="server" Text="Submit" OnClick="CartSubmit_OnClick" BackColor="#999999" />

        </div>

</asp:Content>
