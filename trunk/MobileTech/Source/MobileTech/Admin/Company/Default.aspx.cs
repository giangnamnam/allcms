﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.Company
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grvProductList.DataSource = ProductService.Instance.GetCompany();
            grvProductList.DataBind();
        }
    }
}
