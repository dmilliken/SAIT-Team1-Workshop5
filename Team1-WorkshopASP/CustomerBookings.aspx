<%@ Page Title="Customer Booking Information" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerBookings.aspx.cs" Inherits="Default2" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   
    <hgroup class="title">
        
        <h1><%: Title %>.</h1>
        <h2>Use this page to display information about your travel bookings.</h2>
    </hgroup>

    <!--Darcie Milliken -->

    <!-- This control displays the customer's bookings/packages in display mode only. -->
    
    <div> 

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="CustomerBookingsPackages">
            <Columns>
                <%--<asp:BoundField DataField="PackageID" HeaderText="PackageID" SortExpression="PackageID" />--%>
                <asp:BoundField DataField="PkgName" HeaderText="Package Name" SortExpression="PkgName" />
                <asp:BoundField DataField="PkgStartDate" HeaderText="Start Date" SortExpression="PkgStartDate" />
                <asp:BoundField DataField="PkgEndDate" HeaderText="End Date" SortExpression="PkgEndDate" />
                <asp:BoundField DataField="PkgDesc" HeaderText="Description" SortExpression="PkgDesc" />
                <asp:BoundField DataField="PkgBasePrice" HeaderText="Price" SortExpression="PkgBasePrice" />
                <%--<asp:BoundField DataField="PkgAgencyCommission" HeaderText="PkgAgencyCommission" SortExpression="PkgAgencyCommission" />--%>
                <asp:BoundField DataField="BookingDate" HeaderText="Date Booked" SortExpression="BookingDate" />
                <asp:BoundField DataField="BookingNo" HeaderText="Booking #" SortExpression="BookingNo" />


                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                 <asp:Label ID="lblAmount" runat="server" Text='<%# "$"+Eval("Price").ToString()%>'>  </asp:Label>
                     </ItemTemplate>
                <FooterTemplate>
                     <asp:Label ID="lblTotal" runat="server"></asp:Label>
                 </FooterTemplate>
             </asp:TemplateField>
          </Columns>
        </asp:GridView>

        <!-- Data Source -->
        <br />
        <br />
        <asp:ObjectDataSource ID="CustomerBookingsPackages" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetPackagesFromCustomers" TypeName="Team1_Workshop4_Part2.PackagesDB">
            <SelectParameters>
                <asp:SessionParameter Name="customerId" SessionField="customer" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
