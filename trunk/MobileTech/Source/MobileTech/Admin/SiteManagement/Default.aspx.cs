using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.DomainObjects;

namespace MobileTech.Admin.SiteManagement
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SystemConfiguration config = ProductService.GetSystemConfiguration();
                if (config != null)
                {
                    fckAbout.Value = config.About;
                    fckShortAbout.Value = config.ShortAbout;
                    fckRepair.Value = config.Repair;
                    fckUnclock.Value = config.Unclock;
                    fckIpad.Value = config.Ipad;
                }
            }
        }
        protected void btnOK_Click(object sender, EventArgs e)
        {

            ProductService.UpdateAbout(fckShortAbout.Value, fckAbout.Value, fckRepair.Value, fckUnclock.Value, fckIpad.Value);
        }
    }
}
