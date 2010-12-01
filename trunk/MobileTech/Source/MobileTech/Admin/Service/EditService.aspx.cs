using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.Service
{
    public partial class EditService : System.Web.UI.Page
    {
        int mOtherValue = -1;
        int mCurrentID = -1;
        string CurrentIDName = "CurrentID";

        #region Page Load
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
            Mobile.DomainObjects.Service service = ProductService.GetService(mCurrentID);
            if (service != null)
            {
                txtServiceName.Text = service.ServiceName;
                txtShortContent.Text = service.ShortContent;
                fckDetail.Value = service.DetailContent;
            }
        }
        #endregion

        #region PopulateControl
        void PopulateControl()
        {
            txtServiceName.Text = "";
            txtShortContent.Text = "";
            fckDetail.Value = "";
        }
        #endregion

        #region Save

        #region Image Page
        /// <summary>
        /// Đường dẫn ở local computer
        /// </summary>
        string GetImageDir(string id, string ext)
        {
            return MapPath("~\\Images\\") + "Service\\" + id + ext;
        }
        /// <summary>
        /// Đường dẫn lưu trong database
        /// </summary>
        string GetImagePath(string id, string ext)
        {
            return "~\\Images\\" + "Service\\" + id + ext;
        }
        #endregion

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtServiceName.Text != "")
            {
                #region Upload image
                string path = "";
                string id = Guid.NewGuid().ToString();
                if (fileImage.PostedFile != null)
                {
                    string ext = "";
                    ext = System.IO.Path.GetExtension(fileImage.PostedFile.FileName).ToLower();
                    ext = ext.Trim();
                    if (ext == ".gif" || ext == ".bmp" || ext == ".jpg" || ext == ".png")
                    {
                        fileImage.SaveAs(GetImageDir(id, fileImage.FileName));
                        path = GetImagePath(id, fileImage.FileName);
                    }
                    else
                    { }
                }
                #endregion

                if (ViewState[CurrentIDName] != null)
                {
                    int.TryParse(ViewState[CurrentIDName].ToString(), out mCurrentID);
                }
                //Add 
                if (mCurrentID == mOtherValue)
                {
                    Mobile.DomainObjects.Service service = new Mobile.DomainObjects.Service();
                    service.ServiceName = txtServiceName.Text;
                    service.ShortContent = txtShortContent.Text;
                    service.DetailContent = fckDetail.Value;
                    service.ImageLink = path;
                    ProductService.InsertService(service);
                    PopulateControl();
                }
                //Edit 
                else
                {
                    Mobile.DomainObjects.Service service = ProductService.GetService(mCurrentID);
                    if (service != null)
                    {
                        service.ServiceName = txtServiceName.Text;
                        service.ShortContent = txtShortContent.Text;
                        service.DetailContent = fckDetail.Value;
                        if (path.Length > 0) service.ImageLink = path;
                        ProductService.UpdateService(service);
                    }
                    Response.Redirect("Default.aspx");
                }
            }
        }
        #endregion

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

                ProductService.DeleteService(mCurrentID);
                Response.Redirect("Default.aspx");
            }
        }
        #endregion

    }
}
