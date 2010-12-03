using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.DomainObjects;

namespace MobileTech
{
    public partial class Services : System.Web.UI.Page
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
            Service service = ProductService.GetService(id);
            if (service != null)
            {
                imgImageDetail.ImageUrl = service.ImageLink;
                lblName.InnerText = service.ServiceName;
                lblShortContent.InnerText = service.ShortContent;
                lblDetailContent.InnerHtml = service.DetailContent;
            }
        }

        private void LoadData()
        {
            lstProduct.DataSource = ProductService.GetService();
            lstProduct.DataBind();
        }
    }
}
