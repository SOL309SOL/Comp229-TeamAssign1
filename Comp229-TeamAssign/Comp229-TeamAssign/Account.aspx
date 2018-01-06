<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Comp229_TeamAssign.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Account Page</h1>
    <%--<asp:GridView ID="GVUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="Customer_id" DataSourceID="SqlDataSource_Users">
        <Columns>
            <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" ReadOnly="True" SortExpression="Customer_id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Columns>
        
    </asp:GridView>--%>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource_Account">
        <ItemTemplate>
            <div class="characterBlock">
                <p>First Name: <%# Eval("FirstName") %></p>
                <p>Last Name: <%# Eval("LastName") %></p>
                <p>Address: <%# Eval("Address") %></p>
                <p>School: <%# Eval("School") %></p>
            </div>
                    
        </ItemTemplate>
               

    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource_Account" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Customers] WHERE ([FirstName] = @FirstName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="FirstName" QueryStringField="FirstName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


   <%-- <asp:SqlDataSource ID="SqlDataSource_Users" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Customers] WHERE ([Customer_id] = @Customer_id)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="Customer_id" SessionField="Customer_id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
