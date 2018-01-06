<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Comp229_TeamAssign.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" align="center">
        <h2><%: Title %>.</h2>
        <br />
        <div class="col-md-3">
        </div>
        <div class="col-md-6">

            <table style="width: 100%; margin-left: 30%;">
                <tr>
                    <td style="width: 88px">UserName</td>
                    <td style="width: 148px">
                        <asp:TextBox ID="txtLoginName" runat="server" width="200px" CssClass="col-md-offset-0"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" BackColor="#FF5050" runat="server" ControlToValidate="txtLoginName" ErrorMessage="Please Enter UserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 88px">Password</td>
                    <td style="width: 148px">
                        <asp:TextBox ID="txtLoginPwd" runat="server" TextMode="Password" width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" BackColor="#FF5050" runat="server" ControlToValidate="txtLoginPwd" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 88px">&nbsp;</td>
                    <td style="width: 148px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</asp:Content>
