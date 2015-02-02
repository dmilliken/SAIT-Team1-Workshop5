using Microsoft.AspNet.Membership.OpenAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
     //  RegisterHyperLink.NavigateUrl = "Register.aspx";
      // OpenAuthLogin.ReturnUrl = Request.QueryString["CustomerBookings.aspx"];

       var returnUrl = HttpUtility.UrlEncode(Request.QueryString["CustomerBookings.aspx"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
       // RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }
}