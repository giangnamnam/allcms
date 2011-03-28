using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Common;
using Mobile.DomainObjects;

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
            int? status = null;
            if (ddlStatus.SelectedValue != null && ddlStatus.SelectedValue != "All")
            {
                ProductRepairStatus enumStatus = (ProductRepairStatus)Enum.Parse(typeof(ProductRepairStatus), ddlStatus.SelectedValue);
                status = enumStatus.GetHashCode();
            }
            int? shopId = null;
            if (ddlShop.SelectedValue != null && ddlShop.SelectedValue != "All")
                shopId = int.Parse(ddlShop.SelectedValue);
            DateTime? fromDate = null;
            if (txtFromDate.Value.Length > 0)
            {
                string[] date = txtFromDate.Value.Split('-');
                fromDate = new DateTime(int.Parse(date[2]), int.Parse(date[1]), int.Parse(date[0]));

            }
            DateTime? toDate = null;
            if (txtToDate.Value.Length > 0)
            {
                string[] date = txtToDate.Value.Split('-');
                toDate = new DateTime(int.Parse(date[2]), int.Parse(date[1]), int.Parse(date[0]));

            }
            gridProduct.DataSource = ProductService.GetProductRepair(txtName.Text, txtRepairNo.Text, status, shopId, fromDate, toDate);
            gridProduct.DataBind();
        }

        protected void ddlStatus_Init(object sender, EventArgs e)
        {
            ddlStatus.Items.Add(new ListItem("All", null));
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
            string editText = ((LinkButton)e.CommandSource).Text;
            if (editText == "View Form")
            {
                Label lblID = e.Item.FindControl("lblID") as Label;
                Response.Redirect("ViewForm.aspx?ID=" + lblID.Text.Trim());
            }
            else
            {
                Label lblID = e.Item.FindControl("lblID") as Label;
                Response.Redirect("InputView.aspx?ID=" + lblID.Text.Trim());
            }
        }

        protected void gridProduct_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridProduct.CurrentPageIndex = e.NewPageIndex;
            BindingData();
        }

        protected void gridProduct_ItemDataBound(object sender, DataGridItemEventArgs e)
        {


        }

        protected void gridProduct_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("onmouseover", "this.style.backgroundColor= 'lightgreen';");
                e.Item.Attributes.Add("onmouseout", "this.style.backgroundColor= 'white';");
                if (e.Item.DataItem != null)
                {
                    e.Item.Attributes["ondblclick"] = "window.open('ViewForm.aspx?ID=" + (e.Item.DataItem as ProductRepair).ID + "')";
                }
            }
        }

        protected void gridProduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlShop_Init(object sender, EventArgs e)
        {
            ddlShop.Items.Add(new ListItem("All", null));
            foreach (Mobile.DomainObjects.Contact item in ProductService.GetContact())
            {
                ddlShop.Items.Add(new ListItem(item.ContactName, item.ID.ToString()));
            }
        }


    }
}
