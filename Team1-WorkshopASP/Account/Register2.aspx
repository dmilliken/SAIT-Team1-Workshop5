<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register2.aspx.cs" Inherits="Account_Register2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
    <form id="form1" runat="server">
    <div style="margin-right: 3px; margin-left: 0px; margin-top:0px; width: 113px; height: 438px;">
        <p style="height: 144px; LINE-HEIGHT:24px"> 
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
        <div style="margin-left: 121px; margin-right: 0px; margin-top:0px; width: 445px; height: 420px; z-index:2; position: absolute; top: 15px; left: 10px;">
    
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtusername" ErrorMessage="Username Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpass" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtconpass" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="Password And Confirm Password Must Match" ForeColor="Red"></asp:CompareValidator>
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
        <asp:Button ID="btncls" runat="server" Text="Clear" />
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

       
        &nbsp;</form>
     </div>
</body>
</html>
