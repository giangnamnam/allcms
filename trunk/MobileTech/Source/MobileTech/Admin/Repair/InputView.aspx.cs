using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Common;
using System.Text;
using System.Web.Security;

namespace MobileTech.Admin.Repair
{
    public partial class InputView : System.Web.UI.Page
    {
        int mOtherValue = -1;
        int mCurrentID = -1;
        string CurrentIDName = "CurrentID";

        #region Init Data
        protected void ddlStatus_Init(object sender, EventArgs e)
        {
            foreach (object value in Enum.GetValues(typeof(ProductRepairStatus)))
            {
                ddlStatus.Items.Add(new ListItem(Enum.GetName(typeof(ProductRepairStatus), value), value.ToString()));
            }
        }

        protected void radioExteriorCondition_Init(object sender, EventArgs e)
        {
            for (int index = 10; index >= 1; index--)
            {
                radioExteriorCondition.Items.Add(new ListItem(index.ToString(), index.ToString()));
                radioExteriorCondition.RepeatDirection = RepeatDirection.Horizontal;
            }
            radioExteriorCondition.SelectedIndex = 9;
        }

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

        protected void Page_Load(object sender, EventArgs e)
        {
            Control c = this.FindControl("txtCusDate1");

            if (!IsPostBack)
            {
                ViewState.Remove(CurrentIDName);
                int id = mOtherValue;
                string temp = Request.QueryString["ID"];
                if (temp != null && temp != string.Empty)
                {
                    int.TryParse(temp, out id);
                    if (id != mOtherValue)
                    {
                        mCurrentID = id;
                        SetValue();
                        btnDelete.Visible = true;
                        btnViewForm.Visible = true;
                        ViewState.Add(CurrentIDName, mCurrentID);
                        Session[CurrentIDName] = mCurrentID;
                    }
                }

                //If insert new value
                if (btnDelete.Visible == false)
                {
                    txtRepairNo.Text = ProductService.GetProductRepairMaxID();

                    SetContact();
                }
            }
        }

        void SetContact()
        {
            bool isSet = false;
            IList<Mobile.DomainObjects.UsersInContacts> list = ProductService.GetUsersInContacts(Membership.GetUser().UserName);
            if (list != null && list.Count > 0)
            {
                Mobile.DomainObjects.UsersInContacts contact = list[0];
                if (contact.Contact != null)
                {
                    lblContactName.InnerText = contact.Contact.ContactName;
                    lblContactAddress.InnerText = contact.Contact.ContactAddress;
                    lblContactEmail.InnerText = contact.Contact.ContactEmail;
                    lblContactMobilePhone.InnerText = contact.Contact.ContactMobilePhone;
                    lblContactPhone1.InnerText = contact.Contact.ContactPhone1;
                    lblContactPhone2.InnerText = contact.Contact.ContactPhone2;

                    isSet = true;
                }
            }
            if (isSet == false)
            {
                lblContactName.InnerText = "";
                lblContactAddress.InnerText = "";
                lblContactEmail.InnerText = "";
                lblContactMobilePhone.InnerText = "";
                lblContactPhone1.InnerText = "";
                lblContactPhone2.InnerText = "";
            }
            if (Membership.GetUser().Comment != null && Membership.GetUser().Comment.Length > 0)
                txtStaffName.Text = Membership.GetUser().Comment.Replace("@", " ");
        }

        #region Set Value
        /// <summary>
        /// Set data to edit.
        /// </summary>
        void SetValue()
        {
            if (mCurrentID == mOtherValue) return;
            Mobile.DomainObjects.ProductRepair repair = ProductService.GetProductRepair(mCurrentID);
            if (repair != null)
            {
                ddlStatus.SelectedIndex = repair.Status - 1;
                txtRepairNo.Text = repair.RepairNo;
                txtStaffName.Text = repair.StaffName;

                txtCusName.Text = repair.CustomerName;
                if (repair.CustomerDate.HasValue)
                    txtCusDate.Value = repair.CustomerDate.Value.ToString("dd-MM-yyyy");
                txtCusContact.Text = repair.CustomerContact;

                txtProductModel.Text = repair.ProductModel;
                txtPrductColour.Text = repair.ProductColor;
                txtProductIMEI.Text = repair.ProductIMEI;
                txtProductFaultReport.Text = repair.ProductFaultReport;
                chkNoSim.Checked = repair.ProductNoSim;
                txtWB.Text = repair.ProductWB;
                txtNB.Text = repair.ProductNB;
                radioMemoryCard.SelectedIndex = repair.ProductMemoryCard == true ? 0 : 1;
                if (repair.ProductExteriorCondition != null)
                {
                    radioExteriorCondition.SelectedIndex = 10 - int.Parse(repair.ProductExteriorCondition);
                }
                txtLabourCost.Text = repair.MemoLabourCode;
                txtPartsCode.Text = repair.MemoPartsCode;
                txtTotalIncludingGST.Text = repair.MemoTotalInCludingGST;

                txtPartsFixedOthers.Value = repair.PartsFixedOthers;
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
                //Set Contact
                Mobile.DomainObjects.Contact c = repair.Contact;
                if (c != null)
                {
                    lblContactName.InnerText = c.ContactName;
                    lblContactAddress.InnerText = c.ContactAddress;
                    lblContactEmail.InnerText = c.ContactEmail;
                    lblContactMobilePhone.InnerText = c.ContactMobilePhone;
                    lblContactPhone1.InnerText = c.ContactPhone1;
                    lblContactPhone2.InnerText = c.ContactPhone2;
                }
            }
        }
        #endregion

        #region PopulateControl
        void PopulateControl()
        {
            txtCusContact.Text = "";
            txtCusDate.Value = "";
            txtLabourCost.Text = "";
            txtNB.Text = "";
            txtPartsCode.Text = "";
            txtPrductColour.Text = "";
            txtProductFaultReport.Text = "";
            txtProductIMEI.Text = "";
            txtProductModel.Text = "";
            txtRepairNo.Text = "";
            txtStaffName.Text = "";
            txtTotalIncludingGST.Text = "";
            txtWB.Text = "";
            txtPartsFixedOthers.Value = "";

            SetContact();
            txtRepairNo.Text = ProductService.GetProductRepairMaxID();
        }
        #endregion

        #region Cancel
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        #endregion

        #region Delete
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (ViewState[CurrentIDName] != null)
            {
                int.TryParse(ViewState[CurrentIDName].ToString(), out mCurrentID);
                if (mCurrentID == mOtherValue) return;

                ProductService.DeleteProductRepair(mCurrentID);
                Response.Redirect("Default.aspx");
            }
        }
        #endregion

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtStaffName.Text != "")
            {
                if (ViewState[CurrentIDName] != null)
                {
                    int.TryParse(ViewState[CurrentIDName].ToString(), out mCurrentID);
                }
                //Add 
                if (mCurrentID == mOtherValue)
                {
                    Mobile.DomainObjects.ProductRepair repair = new Mobile.DomainObjects.ProductRepair();
                    repair.Status = Enum.Parse(typeof(ProductRepairStatus), ddlStatus.SelectedValue).GetHashCode();
                    repair.RepairNo = txtRepairNo.Text;
                    repair.StaffName = txtStaffName.Text;

                    repair.CustomerName = txtCusName.Text;
                    if (txtCusDate.Value.Length > 0)
                    {
                        string[] date = txtCusDate.Value.Split('-');
                        repair.CustomerDate = new DateTime(int.Parse(date[2]), int.Parse(date[1]), int.Parse(date[0]));

                    }
                    repair.CustomerContact = txtCusContact.Text;

                    repair.ProductModel = txtProductModel.Text;
                    repair.ProductColor = txtPrductColour.Text;
                    repair.ProductIMEI = txtProductIMEI.Text;
                    repair.ProductFaultReport = txtProductFaultReport.Text;
                    repair.ProductNoSim = chkNoSim.Checked;
                    repair.ProductWB = txtWB.Text;
                    repair.ProductNB = txtNB.Text;
                    repair.ProductMemoryCard = radioMemoryCard.SelectedValue == "Y" ? true : false;
                    repair.ProductExteriorCondition = radioExteriorCondition.SelectedValue;
                    repair.MemoLabourCode = txtLabourCost.Text;
                    repair.MemoPartsCode = txtPartsCode.Text;
                    repair.MemoTotalInCludingGST = txtTotalIncludingGST.Text;

                    StringBuilder part = new StringBuilder();
                    foreach (ListItem item in chkPartsFixed.Items)
                    {
                        if (item.Selected)
                        {
                            part.Append(item.Value);
                            part.Append("@");
                        }
                    }
                    repair.PartsFixed = part.ToString();
                    repair.PartsFixedOthers = txtPartsFixedOthers.Value;

                    //Contact
                    IList<Mobile.DomainObjects.UsersInContacts> list = ProductService.GetUsersInContacts(Membership.GetUser().UserName);
                    if (list != null && list.Count > 0)
                    {
                        repair.Contact = list[0].Contact;
                    }

                    ProductService.InsertProductRepair(repair);
                    PopulateControl();
                }
                //Edit 
                else
                {
                    Mobile.DomainObjects.ProductRepair repair = ProductService.GetProductRepair(mCurrentID);
                    if (repair != null)
                    {
                        repair.Status = Enum.Parse(typeof(ProductRepairStatus), ddlStatus.SelectedValue).GetHashCode();
                        //repair.RepairNo = txtRepairNo.Text;
                        repair.StaffName = txtStaffName.Text;

                        repair.CustomerName = txtCusName.Text;
                        if (txtCusDate.Value.Length > 0)
                        {
                            string[] date = txtCusDate.Value.Split('-');
                            repair.CustomerDate = new DateTime(int.Parse(date[2]), int.Parse(date[1]), int.Parse(date[0]));

                        }
                        repair.CustomerContact = txtCusContact.Text;

                        repair.ProductModel = txtProductModel.Text;
                        repair.ProductColor = txtPrductColour.Text;
                        repair.ProductIMEI = txtProductIMEI.Text;
                        repair.ProductFaultReport = txtProductFaultReport.Text;
                        repair.ProductNoSim = chkNoSim.Checked;
                        repair.ProductWB = txtWB.Text;
                        repair.ProductNB = txtNB.Text;
                        repair.ProductMemoryCard = radioMemoryCard.SelectedValue == "Y" ? true : false;
                        repair.ProductExteriorCondition = radioExteriorCondition.SelectedValue;
                        repair.MemoLabourCode = txtLabourCost.Text;
                        repair.MemoPartsCode = txtPartsCode.Text;
                        repair.MemoTotalInCludingGST = txtTotalIncludingGST.Text;

                        StringBuilder part = new StringBuilder();
                        foreach (ListItem item in chkPartsFixed.Items)
                        {
                            if (item.Selected)
                            {
                                part.Append(item.Value);
                                part.Append("@");
                            }
                        }
                        repair.PartsFixed = part.ToString();
                        repair.PartsFixedOthers = txtPartsFixedOthers.Value;
                        ProductService.UpdateProductRepair(repair);
                    }
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}
