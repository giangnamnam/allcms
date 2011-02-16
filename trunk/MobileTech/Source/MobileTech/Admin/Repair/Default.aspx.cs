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
            if (!IsPostBack)
            {
                BindingData();
            }
        }

        void BindingData()
        {
            int? status=0;
            ProductRepairStatus enumStatus = (ProductRepairStatus)Enum.Parse(typeof(ProductRepairStatus), ddlStatus.SelectedValue);
            //if (enumStatus != null)
            {
                status = enumStatus.GetHashCode();
            }
            gridProduct.DataSource = ProductService.GetProductRepair(txtName.Text, txtRepairNo.Text, status);
            gridProduct.DataBind();
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindingData();
        }

        protected void gridProduct_EditCommand(object source, DataGridCommandEventArgs e)
        {
            Label lblID = e.Item.FindControl("lblID") as Label;
            Response.Redirect("InputView.aspx?ID=" + lblID.Text.Trim());
        }

        protected void gridProduct_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridProduct.CurrentPageIndex = e.NewPageIndex;
            BindingData();
        }

        protected void gridProduct_ItemDataBound(object sender, DataGridItemEventArgs e)
        {


        }


    }
}
