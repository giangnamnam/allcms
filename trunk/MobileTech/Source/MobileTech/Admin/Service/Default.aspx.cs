using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.Service
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridProduct.CurrentPageIndex = 0;
                BindDataGrid();
            }
        }
        void BindDataGrid()
        {
            gridProduct.DataSource = ProductService.GetService();
            gridProduct.DataBind();

        }
        protected void gridProduct_EditCommand(object source, DataGridCommandEventArgs e)
        {
            Label lblID = e.Item.FindControl("lblID") as Label;
            Response.Redirect("EditService.aspx?ID=" + lblID.Text.Trim());
        }

        protected void gridProduct_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridProduct.CurrentPageIndex = e.NewPageIndex;
            BindDataGrid();
        }

        protected void gridProduct_ItemDataBound(object sender, DataGridItemEventArgs e)
        {


        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditService.aspx");
        }
}
}
