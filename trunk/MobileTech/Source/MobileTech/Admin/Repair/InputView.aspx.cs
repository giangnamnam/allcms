using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.Repair
{
    public partial class InputView : System.Web.UI.Page
    {
        int mOtherValue = -1;
        int mCurrentID = -1;
        string CurrentIDName = "CurrentID";

        protected void Page_Load(object sender, EventArgs e)
        {
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
                        ViewState.Add(CurrentIDName, mCurrentID);
                    }
                }
            }
        }

        #region Set Value
        /// <summary>
        /// Set data to edit.
        /// </summary>
        void SetValue()
        {
            if (mCurrentID == mOtherValue) return;
            Mobile.DomainObjects.Accessories Accessories = ProductService.GetAccessories(mCurrentID);
            if (Accessories != null)
            {
                //txtAccessoriesName.Text = Accessories.AccessoriesName;
                //txtPrice.Text = Accessories.AccessoriesPrice;
                //txtShortContent.Text = Accessories.ShortContent;
               
            }
        }
        #endregion

        #region PopulateControl
        void PopulateControl()
        {
            //txtAccessoriesName.Text = "";
            //txtPrice.Text = "";
            //txtShortContent.Text = "";
           
        }
        #endregion

        protected void GenerateMsWordDoc(object sender, EventArgs e)
        {
            //string strBody = "<html>" +
            //    "<body>" +
            //        "<div>Your name is: <b>" + "Thanh Tú" + "</b></div>" +
            //        "<table width='100%' style='background-color:#cfcfcf;'><tr><td>1st Cell body data</td><td>2nd cell body data</td></tr></table>" +
            //        "Ms Word document generated successfully." +
            //    "</body>" +
            //    "</html>";
            //string fileName = "MsWordSample.doc";
            //// You can add whatever you want to add as the HTML and it will be generated as Ms Word docs
            //Response.AppendHeader("Content-Type", "application/msword");
            //Response.AppendHeader("Content-disposition", "attachment; filename=" + fileName);
            //Response.Write(strBody);


        }

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

                ProductService.DeleteAccessories(mCurrentID);
                Response.Redirect("Default.aspx");
            }
        }
        #endregion

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //if (txtAccessoriesName.Text != "")
            {
                

                if (ViewState[CurrentIDName] != null)
                {
                    int.TryParse(ViewState[CurrentIDName].ToString(), out mCurrentID);
                }
                //Add 
                if (mCurrentID == mOtherValue)
                {
                    Mobile.DomainObjects.Accessories Accessories = new Mobile.DomainObjects.Accessories();
                    //Accessories.AccessoriesName = txtAccessoriesName.Text;
                    //Accessories.AccessoriesPrice = txtPrice.Text;
                    //Accessories.ShortContent = txtShortContent.Text;
                    //Accessories.DetailContent = fckDetail.Value;
                    //Accessories.ImageLink = path;
                    //Accessories.CreatedDate = DateTime.Now;
                    //int categoryID = 0;
                    //int.TryParse(ddlCategory.SelectedValue, out categoryID);
                    //Accessories.CategoryAcc = ProductService.GetCategoryAcc(categoryID);
                    ProductService.InsertAccessories(Accessories);
                    PopulateControl();
                }
                //Edit 
                else
                {
                    Mobile.DomainObjects.Accessories Accessories = ProductService.GetAccessories(mCurrentID);
                    if (Accessories != null)
                    {
                        //Accessories.AccessoriesName = txtAccessoriesName.Text;
                        //Accessories.AccessoriesPrice = txtPrice.Text;
                        //Accessories.ShortContent = txtShortContent.Text;
                        //Accessories.DetailContent = fckDetail.Value;
                        //if (path.Length > 0) Accessories.ImageLink = path;

                        //Accessories.CreatedDate = DateTime.Now;
                        //int categoryID = 0;
                        //int.TryParse(ddlCategory.SelectedValue, out categoryID);
                        //Accessories.CategoryAcc = ProductService.GetCategoryAcc(categoryID);

                        ProductService.UpdateAccessories(Accessories);
                    }
                    Response.Redirect("Default.aspx");
                }
            }
        }

    }
}
