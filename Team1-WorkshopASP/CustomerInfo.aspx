<%@ Page Title="Customer Account Information" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerInfo.aspx.cs" Inherits="Default2" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <hgroup class="title">

        <h1><%: Title %>.</h1>
        <h2>Use this page to edit your account information.</h2>
    </hgroup>

    <!--Darcie Milliken -->

    <!-- When the customer logs in, the customer's data is displayed in view mode. -->

    <!-- The form validates that the first and last name fields are nonempty -->

    <!-- Listview that displays the data -->
    <div>

        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="CustomerDataEdit">
            <AlternatingItemTemplate>
                <span style="">
                    <%-- CustomerID:
                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />--%>
                    <%--&nbsp;<asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />--%>
                    <br />
                    First Name:
                <asp:Label ID="CustFirstNameLabel" runat="server" Text='<%# Eval("CustFirstName") %>' />
                    <br />
                    Last Name:
                <asp:Label ID="CustLastNameLabel" runat="server" Text='<%# Eval("CustLastName") %>' />
                    <br />
                    Address:
                <asp:Label ID="CustAddressLabel" runat="server" Text='<%# Eval("CustAddress") %>' />
                    <br />
                    Municipality:
                <asp:Label ID="CustCityLabel" runat="server" Text='<%# Eval("CustCity") %>' />
                    <br />
                    Province:
                <asp:Label ID="CustProvLabel" runat="server" Text='<%# Eval("CustProv") %>' />
                    <br />
                    Postal Code:
                <asp:Label ID="CustPostalLabel" runat="server" Text='<%# Eval("CustPostal") %>' />
                    <br />
                    Country:
                <asp:Label ID="CustCountryLabel" runat="server" Text='<%# Eval("CustCountry") %>' />
                    <br />
                    Home Phone:
                <asp:Label ID="CustHomePhoneLabel" runat="server" Text='<%# Eval("CustHomePhone") %>' />
                    <br />
                    Business Phone:
                <asp:Label ID="CustBusPhoneLabel" runat="server" Text='<%# Eval("CustBusPhone") %>' />
                    <br />
                    Email:
                <asp:Label ID="CustEmailLabel" runat="server" Text='<%# Eval("CustEmail") %>' />
                    <br />
                    AgentId:
                <%--<asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                    <br />--%>
                   <%-- UserId:
                <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                <br />--%>
                <%--CustPassword:
                <asp:Label ID="CustPasswordLabel" runat="server" Text='<%# Eval("CustPassword") %>' />
                <br />--%>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                    <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">
                    <%--CustomerID:
                <asp:TextBox ID="CustomerIDTextBox" runat="server" Readonly="true" Text='<%# Bind("CustomerID") %>' />--%>
                    <%--&nbsp;<asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />--%>

                    <br />
                    First Name:
                <asp:TextBox ID="CustFirstNameTextBox" runat="server" Text='<%# Bind("CustFirstName") %>' />
                    <br />
                    Last Name:
                <asp:TextBox ID="CustLastNameTextBox" runat="server" Text='<%# Bind("CustLastName") %>' />
                    <br />
                    Address:
                <asp:TextBox ID="CustAddressTextBox" runat="server" Text='<%# Bind("CustAddress") %>' />
                    <br />
                    Municipality:
                <asp:TextBox ID="CustCityTextBox" runat="server" Text='<%# Bind("CustCity") %>' />
                    <br />
                    Province:
                <asp:TextBox ID="CustProvTextBox" runat="server" Text='<%# Bind("CustProv") %>' />
                    <br />
                    Postal Code:
                <asp:TextBox ID="CustPostalTextBox" runat="server" Text='<%# Bind("CustPostal") %>' />
                    <br />
                    Country:
                <asp:TextBox ID="CustCountryTextBox" runat="server" Text='<%# Bind("CustCountry") %>' />
                    <br />
                    Home Phone:
                <asp:TextBox ID="CustHomePhoneTextBox" runat="server" Text='<%# Bind("CustHomePhone") %>' />
                    <br />
                    Business Phone:
                <asp:TextBox ID="CustBusPhoneTextBox" runat="server" Text='<%# Bind("CustBusPhone") %>' />
                    <br />
                    <%--    AgentId:
                <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />--%>
                    Email: &nbsp;<asp:TextBox ID="CustEmailTextBox" runat="server" Text='<%# Bind("CustEmail") %>' />
                    <%--<br />
                    AgentId:
                <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />
                    <br />
                    UserId:
                <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                <br />
                CustPassword:
                <asp:TextBox ID="CustPasswordTextBox" runat="server" Text='<%# Bind("CustPassword") %>' />
                <br />--%>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">
                    <%--CustomerID:
                <asp:TextBox ID="CustomerIDTextBox" runat="server" Readonly="true" Text='<%# Bind("CustomerID") %>' />--%>
                    <%--&nbsp;<asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />--%>

                    <br />
                    CustFirstName:
                <asp:TextBox ID="CustFirstNameTextBox" runat="server" Text='<%# Bind("CustFirstName") %>' />
                    <br />
                    CustLastName:
                <asp:TextBox ID="CustLastNameTextBox" runat="server" Text='<%# Bind("CustLastName") %>' />
                    <br />
                    CustAddress:
                <asp:TextBox ID="CustAddressTextBox" runat="server" Text='<%# Bind("CustAddress") %>' />
                    <br />
                    CustCity:
                <asp:TextBox ID="CustCityTextBox" runat="server" Text='<%# Bind("CustCity") %>' />
                    <br />
                    CustProv:
                <asp:TextBox ID="CustProvTextBox" runat="server" Text='<%# Bind("CustProv") %>' />
                    <br />
                    CustPostal:
                <asp:TextBox ID="CustPostalTextBox" runat="server" Text='<%# Bind("CustPostal") %>' />
                    <br />
                    CustCountry:
                <asp:TextBox ID="CustCountryTextBox" runat="server" Text='<%# Bind("CustCountry") %>' />
                    <br />
                    CustHomePhone:
                <asp:TextBox ID="CustHomePhoneTextBox" runat="server" Text='<%# Bind("CustHomePhone") %>' />
                    <br />
                    CustBusPhone:
                <asp:TextBox ID="CustBusPhoneTextBox" runat="server" Text='<%# Bind("CustBusPhone") %>' />
                    <br />
                    <%--    AgentId:
                <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />--%>
                    Email: &nbsp;<asp:TextBox ID="CustEmailTextBox" runat="server" Text='<%# Bind("CustEmail") %>' />
                    <br />
                    AgentId:
                <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />
                    <br />
                    UserId:
                <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                <br />
                CustPassword:
                <asp:TextBox ID="CustPasswordTextBox" runat="server" Text='<%# Bind("CustPassword") %>' />
                <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">
                    <%--CustomerID:
                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />--%>
                    <%--&nbsp;<asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />--%>
                    <br />
                    First Name:
                <asp:Label ID="CustFirstNameLabel" runat="server" Text='<%# Eval("CustFirstName") %>' />
                    <br />
                    Last Name:
                <asp:Label ID="CustLastNameLabel" runat="server" Text='<%# Eval("CustLastName") %>' />
                    <br />
                    Address:
                <asp:Label ID="CustAddressLabel" runat="server" Text='<%# Eval("CustAddress") %>' />
                    <br />
                    Municipality:
                <asp:Label ID="CustCityLabel" runat="server" Text='<%# Eval("CustCity") %>' />
                    <br />
                    Province:
                <asp:Label ID="CustProvLabel" runat="server" Text='<%# Eval("CustProv") %>' />
                    <br />
                    Postal Code:
                <asp:Label ID="CustPostalLabel" runat="server" Text='<%# Eval("CustPostal") %>' />
                    <br />
                    Country:
                <asp:Label ID="CustCountryLabel" runat="server" Text='<%# Eval("CustCountry") %>' />
                    <br />
                    Home Phone:
                <asp:Label ID="CustHomePhoneLabel" runat="server" Text='<%# Eval("CustHomePhone") %>' />
                    <br />
                    Business Phone:
                <asp:Label ID="CustBusPhoneLabel" runat="server" Text='<%# Eval("CustBusPhone") %>' />
                    <br />
                    <%--AgentId:
                <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />--%>
                   <%-- &nbsp;<asp:Label ID="CustEmailLabel" runat="server" Text='<%# Eval("CustEmail") %>' />
                    <br />
                    AgentId:
                <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                    <br />
                    UserId:
                <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                <br />
                CustPassword:
                <asp:Label ID="CustPasswordLabel" runat="server" Text='<%# Eval("CustPassword") %>' />
                <br />--%>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                    <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">
                    <%--CustomerID:
                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />--%>
                    &nbsp;<asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                    <br />
                    CustFirstName:
                <asp:Label ID="CustFirstNameLabel" runat="server" Text='<%# Eval("CustFirstName") %>' />
                    <br />
                    CustLastName:
                <asp:Label ID="CustLastNameLabel" runat="server" Text='<%# Eval("CustLastName") %>' />
                    <br />
                    CustAddress:
                <asp:Label ID="CustAddressLabel" runat="server" Text='<%# Eval("CustAddress") %>' />
                    <br />
                    CustCity:
                <asp:Label ID="CustCityLabel" runat="server" Text='<%# Eval("CustCity") %>' />
                    <br />
                    CustProv:
                <asp:Label ID="CustProvLabel" runat="server" Text='<%# Eval("CustProv") %>' />
                    <br />
                    CustPostal:
                <asp:Label ID="CustPostalLabel" runat="server" Text='<%# Eval("CustPostal") %>' />
                    <br />
                    CustCountry:
                <asp:Label ID="CustCountryLabel" runat="server" Text='<%# Eval("CustCountry") %>' />
                    <br />
                    CustHomePhone:
                <asp:Label ID="CustHomePhoneLabel" runat="server" Text='<%# Eval("CustHomePhone") %>' />
                    <br />
                    CustBusPhone:
                <asp:Label ID="CustBusPhoneLabel" runat="server" Text='<%# Eval("CustBusPhone") %>' />
                    <br />
                    <%--  AgentId:
                <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />--%>
                    Email: 
                    &nbsp;<asp:Label ID="CustEmailLabel" runat="server" Text='<%# Eval("CustEmail") %>' />
                    <br />
                    AgentId:
                <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                    <br />
                    UserId:
                <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                <br />
                CustPassword:
                <asp:Label ID="CustPasswordLabel" runat="server" Text='<%# Eval("CustPassword") %>' />
                <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                    <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <!-- Data source and inputs-->
        <asp:ObjectDataSource ID="CustomerDataEdit" runat="server" DataObjectTypeName="System.Customer" DeleteMethod="DeleteCustomer" InsertMethod="AddCustomer" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomerByID" TypeName="CustomerDB" UpdateMethod="UpdateCustomer" ConflictDetection="CompareAllValues">
            <SelectParameters>
                <asp:SessionParameter Name="customerID" SessionField="customer" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="original_customer" Type="Object" />
                <asp:Parameter Name="customer" Type="Object" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
    </div>
</asp:Content>
