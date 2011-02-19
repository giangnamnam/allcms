using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.DomainObjects;

namespace MobileTech.Admin.Repair
{
    public partial class ViewForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = 5;
                SetValue(id);
                if (Session["CurrentID"] != null)
                {
                    int.TryParse(Session["CurrentID"].ToString(), out id);
                    SetValue(id);
                }
            }
        }

        private void SetValue(int id)
        {
            ProductRepair repair = ProductService.GetProductRepair(id);
            lblRepairNo.Text = repair.RepairNo;
            lblStaffName.Text = repair.StaffName;

            lblCusName.Text = repair.CustomerName;
            if (repair.CustomerDate.HasValue)
                lblCusDate.Text = repair.CustomerDate.Value.ToShortDateString();
            lblCusContact.Text = repair.CustomerContact;

            lblProductModel.Text = repair.ProductModel;
            lblProductColour.Text = repair.ProductColor;
            lblProductIMEI.Text = repair.ProductIMEI;
            lblProductFaultReport.Text = repair.ProductFaultReport;
            chkNoSim.Checked = repair.ProductNoSim;
            lblWB.Text = repair.ProductWB;
            lblNB.Text = repair.ProductNB;
            
            lblLabourCost.Text = repair.MemoLabourCode;
            lblPartsCode.Text = repair.MemoPartsCode;
            lblTotalIncludingGST.Text = repair.MemoTotalInCludingGST;

        }
    }
}
