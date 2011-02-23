using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using Mobile.DomainObjects;

namespace MobileTech
{
    public partial class RepairTracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            {
                bool isItemValid = false;
                string temp = Request.QueryString["RepairNo"];
                if (temp != null && temp != string.Empty)
                {
                    IList<ProductRepair> list = ProductService.GetProductRepair(string.Empty, temp, null);
                    foreach (ProductRepair item in list)
                    {
                        if (item.RepairNo.Equals(temp))
                        {
                            SetValue(item.ID);
                            isItemValid = true;
                            break;
                        }
                    }

                }
                if (isItemValid == false)
                {
                    TableRepairContent.Visible = false;
                    lblNotes.Visible = true;
                    lblNotes.Text = string.Format("Item Invalid. Repair No {0} not found", temp);
                }
                else
                {
                    TableRepairContent.Visible = true;
                    lblNotes.Visible = false;
                }
            }
        }
        private void SetValue(int id)
        {
            ProductRepair repair = ProductService.GetProductRepair(id);
            lblRepairNo.Text = repair.RepairNo;
            //lblStaffName.Text = repair.StaffName;
            lblStatus.Text = repair.StatusToString;

            lblCusName.Text = repair.CustomerName;
            if (repair.CustomerDate.HasValue)
                lblCusDate.Text = repair.CustomerDate.Value.ToString("dd-MM-yyyy");
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
                lblMemoryCardY.Font.Underline = true;
                lblMemoryCardY.Font.Size = new FontUnit(14);
            }
            else
            {
                lblMemoryCardN.Font.Bold = true;
                lblMemoryCardN.Font.Size = new FontUnit(14);
            }
            if (repair.ProductExteriorCondition != null)
            {
                StringBuilder condition = new StringBuilder();
                for (int i = 10; i >= 1; i--)
                {

                    if (i == int.Parse(repair.ProductExteriorCondition))
                    {
                        condition.Append(string.Format("   <span style='font-size:16px; font-weight:bold; text-decoration: underline;'>{0}</span>", i));
                    }
                    else condition.Append("   " + i.ToString());
                }
                lblExteriorCondition.InnerHtml = condition.ToString();
            }

            //lblLabourCost.Text = repair.MemoLabourCode;
            //lblPartsCode.Text = repair.MemoPartsCode;
            //lblTotalIncludingGST.Text = repair.MemoTotalInCludingGST;

            //if (repair.PartsFixed != null)
            //{
            //    string[] part = repair.PartsFixed.Split('@');
            //    foreach (ListItem item in chkPartsFixed.Items)
            //    {
            //        for (int i = 0; i < part.Length; i++)
            //        {
            //            if (part[i] == item.Value)
            //            {
            //                item.Selected = true;
            //                break;
            //            }
            //        }

            //    }
            //}

        }
    }
}
