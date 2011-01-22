using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech
{
    public partial class RepairList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grvProductList.DataSource = ProductService.GetProductRepair(string.Empty, string.Empty, null);
            grvProductList.DataBind();
        }
    }
}
