using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Mobile.Common;

namespace MobileTech.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[MyConst.Session_Login_Status] = false;
            
        }

        protected void ctlLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //Password: Passw@rd
            if (Membership.ValidateUser(ctlLogin.UserName, "Passw@rd"))
            {
                Session[MyConst.Session_Login_Status] = true;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Session[MyConst.Session_Login_Status] = false;
            }
        }
    }
}
