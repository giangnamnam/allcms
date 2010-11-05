using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Common;
using System.Web.Security;

namespace MobileTech.Admin.Share
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Membership.GetUser() == null
                || Session[MyConst.Session_Login_Status] == null
                || (bool)Session[MyConst.Session_Login_Status] == false)
            {
                Response.Redirect("~/Admin/Login.aspx");
            }
            hplLogout.Text = Membership.GetUser().UserName + " - Logout";
        }
    }
}
