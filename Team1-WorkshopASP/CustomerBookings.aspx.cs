using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Brodie Modified Feb 03 2015, added check login
        if (Convert.ToBoolean(Session["loggedin"]) == false)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}