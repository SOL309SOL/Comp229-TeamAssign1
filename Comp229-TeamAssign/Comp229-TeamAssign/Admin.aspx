<%@ Page Title="Admin Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Comp229_TeamAssign.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
    <h2><%: Title %>.</h2>
    <h3>User List</h3>
    <div class="dataDiv">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BorderStyle="None" BorderColor="#3A3A3C" BackColor="#3A3A3C">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" >
                </asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Columns>
            <HeaderStyle BackColor="#ECECEC" ForeColor="Black" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Login %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
        <div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Login %>" SelectCommand="SELECT * FROM [items1]"></asp:SqlDataSource>
            <br/>
            <div>
                <asp:Repeater ID="CharacterList" runat="server" DataSourceID="SqlDataSource3">
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
