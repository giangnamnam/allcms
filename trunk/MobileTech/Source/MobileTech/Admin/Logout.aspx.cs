using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Common;

namespace MobileTech.Admin
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[MyConst.Session_Login_Status] = false;
            Response.Redirect("Login.aspx");
        }
    }
}
