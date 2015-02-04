using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using Team1_Workshop4_Part2;

public partial class Account_Register : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (!OpenAuth.IsLocalUrl(continueUrl))
        {
            continueUrl = "~/";
        }
        //Added feb 03 2015 Brodie
        TextBox email = RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("Email") as TextBox;
        string eMail = email.Text;
        Session["newEmail"] = eMail;
        Customer newuser = CustomerDB.GetCustomerByEmail(eMail);
        if (newuser == null)
        {
            Session["loggedin"] = true;
            Session["new"] = true;
        }
        else
        {
            Response.Write("<script>alert('User Email Already Exists!');</script>");

        }
        //End of Brodie Addition
        Response.Redirect(continueUrl);
    }


    protected void Unnamed10_Click(object sender, EventArgs e)
    {

    }
}