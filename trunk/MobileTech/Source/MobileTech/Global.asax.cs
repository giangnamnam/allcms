using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace MobileTech
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["VistorOnline"] = 0;
            Application["VistorCount"] = ProductService.GetSystemConfiguration().VisitorCount;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            if (Application["VisitorOnline"] == null) Application["VisitorOnline"] = 0;
            Application["VisitorOnline"] = (int)Application["VisitorOnline"] + 1;

            if (Application["VistorCount"] == null) Application["VistorCount"] = 0;
            Application["VistorCount"] = (int)Application["VistorCount"] + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["VisitorOnline"] = (int)Application["VisitorOnline"] - 1;

            ProductService.UpdateVisitorCount((int)Application["VistorCount"]);
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            ProductService.UpdateVisitorCount((int)Application["VistorCount"]);
        }
    }
}