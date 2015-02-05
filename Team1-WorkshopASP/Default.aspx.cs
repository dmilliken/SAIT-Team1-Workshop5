using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team1_Workshop4_Part2;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // hide the greeting panel
        pnlGreeting.Visible = false;
        //Brodie Modifed to check logged in session variables Feb 03 2015
        if (Session["loggedin"] == null)
        {
            Session["loggedin"] = false;
        }
    }
    //protected void ddlChooseCustomer_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    // DM: When the drop down list is changed, greet the customer, then make the default page links and customer information visible.

    //    // show the panel
    //    pnlGreeting.Visible = true;

    //    Session.Clear(); // clear the session variables
    //    Customer customer = new Customer();
    //    customer = null;
    //    // get the customer ID from the box

    //    //int custID = Convert.ToInt32(ddlChooseCustomer.SelectedValue);

    //    // store it in a session variable 
    //    Session["custID"] = custID;
    //    customer = CustomerDB.GetCustomerByID(custID);

    //    Session["CustFirstName"] = customer.CustFirstName;
    //    Session["CustLastName"] = customer.CustLastName;

    //    //Response.Redirect(Request.RawUrl);
    //    // lblWelcomeName.Text = Convert.ToString(ddlChooseCustomer.SelectedItem);
    //    // lblWelcomeName.Text = Convert.ToString(custID);
    //    // lblWelcomeName.Text = Convert.ToString(Session["CustFirstName"]) + " " + Convert.ToString(Session["CustLastName"]);
    //    lblWelcomeName.Text = customer.CustFirstName.ToString() + " " + customer.CustLastName.ToString();
         
    //} // end method
}