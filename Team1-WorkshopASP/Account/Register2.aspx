<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register2.aspx.cs" Inherits="Account_Register2" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div style="height: 840px">

    <div style="margin-right: 3px; margin-left: 0px; margin-top:0px; height: 420px; z-index:2; position: absolute; top: 459px; width: 118px; left: 441px;">
        <p style="height: 421px"> 
            Username: <br/>
            Email:<br/>
            Password:<br/>
            Confirm Password:<br/>
            First Name:<br/>
            Last Name:<br/>
            Address:<br/>
            City:<br/>
            Province:<br/>
            Postal Code:<br/>
            Counrty:<br />
            Home Phone:<br/>
            Bus. Phone<br />
        </p>
        <div style="margin-left: 0px; margin-right: 0px; margin-top:0px; width: 620px; height: 420px; z-index:2; position: absolute; top: 16px; left: 122px;">
    
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtusername" ErrorMessage="Username Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
            <asp:Label ID="lblusernameerror" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpass"  ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:TextBox ID="txtconpass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconpass" ControlToValidate="txtpass" ErrorMessage="Password And Confirm Password Must Match" ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtfirst" ErrorMessage="First Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtlast" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtlast" ErrorMessage="Last Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtaddress" ErrorMessage="Address Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcity" ErrorMessage="City Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtprov" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtprov" ErrorMessage="Province is Reqired" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtpostal" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpostal" ErrorMessage="Postal Code Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcountry" ErrorMessage="Country Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txthomephone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txthomephone" ErrorMessage="Home Phone Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtbusphone" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncls" runat="server" Text="Clear" OnClick="btncls_Click" />
        <br />
        <br />
        <br />
    
   
    
        </div>
    
                <br />
                <br />
                <br />
               
        
         </div>
    
        <br />
        <br />
        <br />       

     </div>
</asp:Content>
