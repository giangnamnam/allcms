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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            grvProductList.DataSource = ProductService.GetProductRepair(string.Empty, txtRepairNo.Text, null);
            grvProductList.DataBind();
        }

        protected void grvProductList_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow || e.Row.RowType == DataControlRowType.EmptyDataRow)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor= 'lightgreen';");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor= 'white';");
            }
        }
    }
}
