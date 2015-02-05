using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Register2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (CustomerDB.GetCustomerByEmail(txtusername.Text) == null)
        {
            Customer newcust = new Customer();

            newcust.CustFirstName = txtfirst.Text;
            newcust.CustLastName = txtlast.Text;
            newcust.CustAddress = txtaddress.Text;
            newcust.CustCity = txtcity.Text;
            newcust.CustCountry = txtcountry.Text;
            newcust.CustPostal = txtpostal.Text;
            newcust.CustHomePhone = txthomephone.Text;
            newcust.CustBusPhone = txtbusphone.Text;
            newcust.UserId = txtusername.Text;
            newcust.CustPassword = txtconpass.Text;

            CustomerDB.AddCustomer(newcust);



        }
        else
        {
            lblusernameerror.Text = "Username Already Taken";
        }
        
    }
    protected void btncls_Click(object sender, EventArgs e)
    {
       txtfirst.Text = "";
       txtlast.Text = "";
       txtaddress.Text = "";
       txtcity.Text = "";
       txtcountry.Text = "";
       txtpostal.Text = "";
       txthomephone.Text = "";
       txtbusphone.Text = "";
       txtusername.Text = "";
       txtconpass.Text = "";
    }
}