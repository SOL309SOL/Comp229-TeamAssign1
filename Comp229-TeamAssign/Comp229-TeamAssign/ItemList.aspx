<%@ Page Title="Item List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="Comp229_TeamAssign.ItemList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="dataDiv">
    <asp:GridView ID="GridView1" cssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="HarryDataSource" BorderStyle="None" BorderColor="#3A3A3C" BackColor="#3A3A3C">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
        <HeaderStyle BackColor="#ECECEC" ForeColor="Black" />
    </asp:GridView>
        <asp:SqlDataSource ID="HarryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Login %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    <p>
    </p>
    </div>
</asp:Content>
