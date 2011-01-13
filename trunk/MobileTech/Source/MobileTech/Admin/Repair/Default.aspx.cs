using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Common;

namespace MobileTech.Admin.Repair
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grvProductList.DataSource = ProductService.Instance.GetProduct();
            grvProductList.DataBind();
        }
        protected void ddlStatus_Init(object sender, EventArgs e)
        {
            foreach (object value in Enum.GetValues(typeof(ProductRepairStatus)))
            {
                ddlStatus.Items.Add(new ListItem(Enum.GetName(typeof(ProductRepairStatus), value), value.ToString()));
            }
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}
