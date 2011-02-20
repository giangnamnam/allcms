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
                int id = 0;
                string temp = Request.QueryString["ID"];
                if (temp != null && temp != string.Empty)
                {
                    int.TryParse(temp, out id);
                    SetValue(id);
                }
                else if (Session["CurrentID"] != null)
                {
                    int.TryParse(Session["CurrentID"].ToString(), out id);
                    SetValue(id);
                }
            }
        }
        #region Init Data
        protected void chkPartsFixed_Init(object sender, EventArgs e)
        {

            chkPartsFixed.Items.Add(new ListItem("LCD", "LCD"));
            chkPartsFixed.Items.Add(new ListItem("Ribbon", "Ribbon"));
            chkPartsFixed.Items.Add(new ListItem("Connector", "Connector"));
            chkPartsFixed.Items.Add(new ListItem("Resistors", "Resistors"));
            chkPartsFixed.Items.Add(new ListItem("Light Emitting Diodes", "Light Emitting Diodes"));
            chkPartsFixed.Items.Add(new ListItem("Capacitors", "Capacitors"));
            chkPartsFixed.Items.Add(new ListItem("Mic", "Mic"));
            chkPartsFixed.Items.Add(new ListItem("Speaker", "Speaker"));
            chkPartsFixed.Items.Add(new ListItem("Buzz", "Buzz"));
            chkPartsFixed.Items.Add(new ListItem("Vibration", "Vibration"));
            chkPartsFixed.Items.Add(new ListItem("Circuit Board Repair", "Circuit Board Repair"));
            chkPartsFixed.Items.Add(new ListItem("Circuit Board Cleaning", "Circuit Board Cleaning"));
            chkPartsFixed.Items.Add(new ListItem("Software", "Software"));
            chkPartsFixed.Items.Add(new ListItem("Toggle", "Toggle"));
            chkPartsFixed.Items.Add(new ListItem("Keypad", "Keypad"));
            chkPartsFixed.Items.Add(new ListItem("Multimedia", "Multimedia"));
            chkPartsFixed.Items.Add(new ListItem("Reseption", "Reseption"));
            chkPartsFixed.Items.Add(new ListItem("Volume", "Volume"));
            chkPartsFixed.Items.Add(new ListItem("Antenna", "Antenna"));
            chkPartsFixed.Items.Add(new ListItem("Background Light", "Background Light"));
            chkPartsFixed.Items.Add(new ListItem("On-off Button", "On-off Button"));
            chkPartsFixed.Items.Add(new ListItem("Charger Connector", "Charger Connector"));
            chkPartsFixed.Items.Add(new ListItem("Housing", "Housing"));
            chkPartsFixed.Items.Add(new ListItem("Camera", "Camera"));
            chkPartsFixed.Items.Add(new ListItem("BGAIC", "BGAIC"));

            chkPartsFixed.RepeatDirection = RepeatDirection.Horizontal;
            chkPartsFixed.RepeatLayout = RepeatLayout.Table;
        }
        #endregion
        private void SetValue(int id)
        {
            ProductRepair repair = ProductService.GetProductRepair(id);
            lblRepairNo.Text = repair.RepairNo;
            lblStaffName.Text = repair.StaffName;

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

            if (repair.PartsFixed != null)
            {
                string[] part = repair.PartsFixed.Split('@');
                foreach (ListItem item in chkPartsFixed.Items)
                {
                    for (int i = 0; i < part.Length; i++)
                    {
                        if (part[i] == item.Value)
                        {
                            item.Selected = true;
                            break;
                        }
                    }

                }
            }

        }
    }
}
