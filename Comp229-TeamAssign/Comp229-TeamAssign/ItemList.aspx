<%@ Page Title="Item List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="Comp229_TeamAssign.ItemList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <h2><%: Title %>.</h2>
 
    <div class="dataDiv">
    <asp:GridView ID="GridView1" cssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="HarryDataSource" BorderStyle="None" BorderColor="#3a3a3c" BackColor="#3a3a3c">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
        <HeaderStyle BackColor="#ECECEC" ForeColor="Black" />
    </asp:GridView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    </p>
    </div>
</asp:Content>
