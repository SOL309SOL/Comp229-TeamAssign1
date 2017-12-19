<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Comp229_TeamAssign.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h2><%: Title %>.</h2>
    <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">User Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FF5050" ControlToValidate="txtName" ErrorMessage="User Name is required" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FF5050" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="White"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="#FF9999" ErrorMessage="You have to write email address" ForeColor="White" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FF5050" ControlToValidate="txtPwd" ErrorMessage="Password is required" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Confirm Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FF5050" ControlToValidate="txtConfirmPwd" ErrorMessage="Confirm is required" ForeColor="White"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FF9999" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Password is not matched" ForeColor="White"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Country</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlCountry" runat="server" Width="250px">
                            <asp:ListItem>Select...</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>CANADA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>KOREA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FF5050" ControlToValidate="ddlCountry" ErrorMessage="Select a country name" ForeColor="White" InitialValue="Select..."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td></td>
                </tr>
      </table>
</asp:Content>
