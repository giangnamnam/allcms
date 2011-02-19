using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.DomainObjects;
using System.Text;

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
            if (repair.ProductMemoryCard)
            {
                lblMemoryCardY.Font.Bold = true;
                lblMemoryCardY.Font.Size = new FontUnit(14);
            }
            else
            {
                lblMemoryCardN.Font.Bold = true;
                lblMemoryCardN.Font.Size = new FontUnit(14);
            }
            if (repair.ProductExteriorCondition != null)
            {
                StringBuilder condition=new StringBuilder();
                for (int i = 10; i >= 1; i--)
                {
                    
                    if (i == int.Parse(repair.ProductExteriorCondition))
                    {
                        condition.Append(string.Format("   <b>{0}</b>", i));
                    }
                    else condition.Append("   " + i.ToString());
                }
                lblExteriorCondition.InnerHtml = condition.ToString();
            }
            
            lblLabourCost.Text = repair.MemoLabourCode;
            lblPartsCode.Text = repair.MemoPartsCode;
            lblTotalIncludingGST.Text = repair.MemoTotalInCludingGST;

        }
    }
}
