using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Common;
using System.Web.Security;

namespace MobileTech.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ctlLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //Password: Passw@rd
            if (Membership.ValidateUser(ctlLogin.UserName, ctlLogin.Password))
            {
                Session[MyConst.Session_Login_Status] = true;
                string url = Request.QueryString["ReturnUrl"];
                if (url != null)
                {
                    FormsAuthentication.RedirectFromLoginPage(ctlLogin.UserName, false);
                }
                else
                {
                    FormsAuthentication.SetAuthCookie(ctlLogin.UserName, false);
                    //Response.Redirect("Product/");
                    Response.Redirect("Service/");
                }
            }
            else
            {
                Session[MyConst.Session_Login_Status] = false;
                //Response.Write("Invalid UserID and Password");
            }

        }
    }
}
