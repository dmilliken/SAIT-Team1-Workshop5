<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <!--h3>Hello! Please select your surname:
        <!-- Dropdown menu to select the customer ->
        <asp:DropDownList ID="ddlChooseCustomer" runat="server" AutoPostBack="True" DataSourceID="CustomerDropDownData" 
            DataTextField="CustLastName" DataValueField="CustomerID" OnSelectedIndexChanged="ddlChooseCustomer_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="CustomerDropDownData" runat="server" DataObjectTypeName="System.Customer" DeleteMethod="DeleteCustomer" 
            InsertMethod="AddCustomer" OldValuesParameterFormatString="original_customer{0}" SelectMethod="GetAllCustomers" 
            TypeName="Team1_Workshop4_Part2.CustomerDB" UpdateMethod="UpdateCustomer">
            <UpdateParameters>
                <asp:Parameter Name="original_customer" Type="Object" />
                <asp:Parameter Name="newCustomer" Type="Object" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </!--h3-->
    
    <!-- Upon selection, display the greeting panel  -->

    <!-- This is Where thoe Home page link goes to to -->

   <h1>Place holder for final Travel Experts Home Page</h1> 

    <h3 class="invisible">&nbsp;</h3>
    <p class="invisible"></p>

    <asp:Panel ID="pnlGreeting" runat="server" Visible="False">
       <h3> Thank you,&nbsp;
        <asp:Label ID="lblWelcomeName" runat="server"></asp:Label>
        ! Would you like to <a href="CustomerInfo.aspx">edit your account information</a>, or view your <a href="CustomerBookings.aspx">package bookings</a>?
           </h3>
    </asp:Panel>

</asp:Content>
