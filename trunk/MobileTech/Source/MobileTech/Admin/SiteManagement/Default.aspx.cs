﻿using System;
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
            IList<SystemConfiguration> list = ProductService.Instance.GetSystemConfiguration();
            if (list != null && list.Count > 0)
            {
 
            }
        }
    }
}
