<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>

            </asp:DropDownList>
        </h1>
        <p>&nbsp;</p>
        <h2>Use the form below to create a new account.</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
        </FinishNavigationTemplate>
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <table>
                        <tr><td>Registration Form</td></tr>
                            <tr><td>
                                <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                </td>
                                <td>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." ForeColor="Red" />
                                </td>
                            </tr>
                            <tr><td>
                                <asp:Label runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                </td>
                                <td>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." ForeColor="Red" />
                                </td>
                            </tr>
                            <tr><td>
                                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                </td>
                                <td>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." ForeColor="Red" />
                                </td>
                            </tr>
                            <tr><td>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                </td>
                                <td>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." ForeColor="Red" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." ForeColor="Red" />
                                </td>
                            </tr>
                        </table>
                    <asp:DetailsView ID="NewCustDetails" runat="server" AutoGenerateRows="False" BorderStyle="None" BorderWidth="0px" DataSourceID="CustomerDataEdit" DefaultMode="Insert" GridLines="None" Height="54px" Width="337px" AutoGenerateInsertButton="True">
                        <Fields>
                            <asp:BoundField AccessibleHeaderText="First Name" DataField="CustFirstName" HeaderText="First Name" SortExpression="CustFirstName" />
                            <asp:BoundField DataField="CustLastName" HeaderText="Last Name" SortExpression="CustLastName" />
                            <asp:BoundField DataField="CustAddress" HeaderText="Address" SortExpression="CustAddress" />
                            <asp:BoundField DataField="CustCity" HeaderText="City" SortExpression="CustCity" />
                            <asp:BoundField DataField="CustProv" HeaderText="Province ex. ON" SortExpression="CustProv" /> 
                            <asp:BoundField DataField="CustPostal" HeaderText="Postal" SortExpression="CustPostal" />
                            <asp:BoundField DataField="CustCountry" HeaderText="Country" SortExpression="CustCountry" />
                            <asp:BoundField DataField="CustHomePhone" HeaderText="Home Phone" SortExpression="CustHomePhone" />
                            <asp:BoundField DataField="CustBusPhone" HeaderText="Bus Phone" SortExpression="CustBusPhone" />
                            <asp:BoundField DataField="CustEmail" HeaderText="Re-Enter Email" SortExpression="CustEmail" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="CustomerDataEdit" runat="server" ConflictDetection="CompareAllValues" DataObjectTypeName="System.Customer" InsertMethod="AddCustomer" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomerByID" TypeName="Team1_Workshop4_Part2.CustomerDB">
                        <SelectParameters>
                            <asp:SessionParameter Name="customerID" SessionField="customer" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button runat="server" CommandName="MoveNext" Text="Next" OnClick="Unnamed10_Click" UseSubmitBehavior="False"/>
                </ContentTemplate>
                <CustomNavigationTemplate/>
            </asp:CreateUserWizardStep>
            
            <asp:WizardStep runat="server" ID="CustInfo" StepType="Step" >
                
                
            </asp:WizardStep>

            <asp:CompleteWizardStep runat="server">
    <ContentTemplate>
        <table>
            <tr>
                <td align="center" colspan="2">Complete</td>
            </tr>
            <tr>
                <td>Your account has been successfully created.</td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="RegisterUser" />
                </td>
            </tr>
        </table>
    </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
        </StepNavigationTemplate>
    </asp:CreateUserWizard>
</asp:Content>