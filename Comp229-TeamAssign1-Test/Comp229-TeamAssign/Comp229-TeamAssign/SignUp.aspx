<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Comp229_TeamAssign.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
        <h2><%: Title %>.</h2><br/>
        <div class="col-md-3">
        </div>
        <div class="col-md-6">

            
            <table style="width: 100%; margin-left: 20%;">
                <tr>
                    <td class="auto-style1" style="width: 114px; height: 26px;">First Name</td>
                    <td class="auto-style4" style="width: 289px; height: 26px;">
                        <asp:TextBox ID="txtFName" runat="server"  Width="200px"></asp:TextBox>
                    </td>
                    <td style="height: 26px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FF5050" ControlToValidate="txtFName" ErrorMessage="First Name is required" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 114px; height: 26px;">Last Name</td>
                    <td class="auto-style4" style="width: 289px; height: 26px;">
                        <asp:TextBox ID="txtLName" runat="server"  Width="200px"></asp:TextBox>
                    </td>
                    <td style="height: 26px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="#FF5050" ControlToValidate="txtLName" ErrorMessage="Last Name is required" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 114px">Address</td>
                    <td class="auto-style5" style="width: 289px">
                        <asp:TextBox ID="txtAddress" runat="server"  Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FF5050" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="White"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td class="auto-style1" style="width: 114px">Password</td>
                    <td class="auto-style4" style="width: 289px">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"  Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FF5050" ControlToValidate="txtPwd" ErrorMessage="Password is required" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 114px">Confirm Password</td>
                    <td class="auto-style4" style="width: 289px">
                        <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"  Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FF5050" ControlToValidate="txtConfirmPwd" ErrorMessage="Confirm is required" ForeColor="White"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FF9999" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Password is not matched" ForeColor="White"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 114px">School</td>
                    <td class="auto-style4" style="width: 289px">
                        <asp:DropDownList ID="ddlSchool" runat="server" Width="200px">
                            <asp:ListItem>Select...</asp:ListItem>
                            <asp:ListItem>Gryffindor </asp:ListItem>
                            <asp:ListItem>Slytherin</asp:ListItem>
                            <asp:ListItem>Hufflepuff </asp:ListItem>
                            <asp:ListItem>Ravenclaw</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FF5050" ControlToValidate="ddlSchool" ErrorMessage="Select Your School name" ForeColor="White" InitialValue="Select..."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 114px"></td>
                    <td style="width: 289px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</asp:Content>
