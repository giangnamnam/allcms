using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.UIControls
{
    public partial class LeftMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstService.DataSource = ProductService.GetService();
                lstService.DataBind();

                lstAccessories.DataSource = ProductService.GetCategoryAcc();
                lstAccessories.DataBind();
            }
        }
    }
}