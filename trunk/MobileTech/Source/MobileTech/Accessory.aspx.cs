using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.DomainObjects;

namespace MobileTech
{
    public partial class Accessory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool isDetail = false;
            string idString = Request.QueryString["ID"];
            if (idString != null && idString.Length > 0)
            {
                int id = 0;
                int.TryParse(idString, out id);
                if (id > 0)
                {
                    lstProduct.Visible = false;
                    pnlAccessoriesDetail.Visible = true;
                    isDetail = true;
                    LoadDataDetail(id);
                }
            }
            if (!IsPostBack && !isDetail) LoadData();
        }

        private void LoadDataDetail(int id)
        {
            Accessories accessories = ProductService.GetAccessories(id);
            if (accessories != null)
            {
                imgImageDetail.ImageUrl = accessories.ImageLink;
                lblName.InnerText = accessories.AccessoriesName;
                lblShortContent.InnerText = accessories.ShortContent;
                lblDetailContent.InnerHtml = accessories.DetailContent;
                lblPrice.InnerText = string.Format("${0}AUD", accessories.AccessoriesPrice);
            }
        }

        private void LoadData()
        {
            IList<Accessories> list = null;
            string idString = Request.QueryString["CategoryID"];
            if (idString != null && idString.Length > 0)
            {
                int id = 0;
                int.TryParse(idString, out id);
                if (id > 0)
                {
                    list = ProductService.GetAccessoriesByCategory(id);
                }
            }
            if (list == null) list = ProductService.GetAccessories();

            lstProduct.DataSource = list;
            lstProduct.DataBind();

        }

        protected void lstProduct_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemIndex < 0) return;

            //Label lblID = e.Item.FindControl("lblID") as Label;
            //HyperLink hplImage = e.Item.FindControl("hplImage") as HyperLink;
            //hplImage.NavigateUrl = "../ProductDetail.aspx?ID=" + lblID.Text.Trim();
            //HyperLink hplName = e.Item.FindControl("hplName") as HyperLink;
            //hplName.NavigateUrl = "../ProductDetail.aspx?ID=" + lblID.Text.Trim();


        }
    }
}
