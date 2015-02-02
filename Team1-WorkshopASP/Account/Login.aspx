<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link href="Login.css" rel="stylesheet" type="text/css" />
    <hgroup class="title">
        <h2><asp:Login runat="server"  CssClass="Login" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" >
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LayoutTemplate>
                <fieldset>
                    <legend>Log in Form</legend>
                    <Table>
                        <tr>
                           <td> <asp:Label runat="server" AssociatedControlID="UserName">Email</asp:Label></td>
                           <td> <asp:TextBox runat="server" ID="UserName" Width="334px" style="margin-left: 51px" /></td>
                           <td><asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." ForeColor="Red" /></td>
                        </tr>
                        <tr>
                           <td> <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label></td>
                            <td><asp:TextBox runat="server" ID="Password" TextMode="Password" Width="334px" style="margin-left: 51px" /></td>
                            <td><asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." ForeColor="Red" /></td>
                        </tr>
                        <tr>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label>
                        </tr>
                    </Table>
                    <asp:Button runat="server" CommandName="Login" Text="Log in" />
                </fieldset>
            </LayoutTemplate>
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
            Please Enter You Email To Login</h2>
    </hgroup>
    
    <section id="loginForm">
    </section>

    <section id="socialLoginForm">
        <h2 style="height: 297px; margin-top: 0px;">&nbsp;</h2>
                <p class="validation-summary-errors" __designer:mapid="ea">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
            &nbsp;if you don't have an account.
        </p>
    </section>
</asp:Content>