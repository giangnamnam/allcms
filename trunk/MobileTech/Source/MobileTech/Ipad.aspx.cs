﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech
{
    public partial class Ipad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAbout.InnerHtml = ProductService.GetSystemConfiguration().Ipad;
        }
    }
}
