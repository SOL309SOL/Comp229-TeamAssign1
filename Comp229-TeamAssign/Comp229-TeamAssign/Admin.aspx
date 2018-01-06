<%@ Page Title="Admin Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Comp229_TeamAssign.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
    <h2><%: Title %>.</h2>
    <h3>User List</h3>
    <div class="dataDiv">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_Users" BorderStyle="None" BorderColor="#3A3A3C" BackColor="#3A3A3C" DataKeyNames="Customer_id">
            <Columns>
                <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" SortExpression="Customer_id" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
            </Columns>
            <HeaderStyle BackColor="#ECECEC" ForeColor="Black" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_Users" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <div>
            <br/>
            <div>
                <asp:Repeater ID="CharacterList" runat="server" DataSourceID="SqlDataSource_items">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href='<%# Eval("Item_Brooms_id", "ItemDetail.aspx?Item_Brooms_id={0}") %>'>
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
                <asp:SqlDataSource ID="SqlDataSource_items" runat="server" ConnectionString="<%$ ConnectionStrings:HarryPotter %>" SelectCommand="SELECT * FROM [Items_Brooms]"></asp:SqlDataSource>
            </div>
            <div class="addItems">
                <asp:Label ID="lblAddItemName" runat="server" Text="Item Name"></asp:Label>
                <asp:TextBox ID="txtAddItemName" runat="server"></asp:TextBox>
                <asp:Label ID="lblAddItemPrice" runat="server" Text="Item Price"></asp:Label>
                <asp:TextBox ID="txtAddItemPrice" runat="server"></asp:TextBox>

                <asp:Label ID="lblAddItemQuantity" runat="server" Text="Item Quantity"></asp:Label>
                <asp:TextBox ID="txtAddItemQuantity" runat="server"></asp:TextBox>

                <asp:Button ID="btnAddItems" runat="server" Text="Button" OnClick="btnAddItems_Click" />
            </div>
        </div>
    </div>
        </div>
</asp:Content>
