using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace MobileTech.Admin.Accessories
{
    public partial class EditAccessories : System.Web.UI.Page
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
            Mobile.DomainObjects.Accessories Accessories = ProductService.GetAccessories(mCurrentID);
            if (Accessories != null)
            {
                txtAccessoriesName.Text = Accessories.AccessoriesName;
                txtPrice.Text = Accessories.AccessoriesPrice;
                txtShortContent.Text = Accessories.ShortContent;
                fckDetail.Value = Accessories.DetailContent;
            }
        }
        #endregion

        #region PopulateControl
        void PopulateControl()
        {
            txtAccessoriesName.Text = "";
            txtPrice.Text = "";
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
            return MapPath("~\\Images\\") + "Accessories\\" + id + ext;
        }
        /// <summary>
        /// Đường dẫn lưu trong database
        /// </summary>
        string GetImagePath(string id, string ext)
        {
            return "~\\Images\\" + "Accessories\\" + id + ext;
        }
        #endregion

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtAccessoriesName.Text != "")
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
                        System.Drawing.Image image = System.Drawing.Image.FromStream(fileImage.PostedFile.InputStream);
                        //float imgWidth = image.PhysicalDimension.Width;
                        //float imgHeight = image.PhysicalDimension.Height;
                        //float imgSize = imgHeight > imgWidth ? imgHeight : imgWidth;
                        //float imgResize = imgSize <= 128 ? (float)1.0 : 128 / imgSize;
                        //imgWidth *= imgResize; imgHeight *= imgResize;
                        System.Drawing.Image thumbImage = image.GetThumbnailImage(213, 243, delegate() { return false; }, (IntPtr)0);

                        string fileName = GetImageDir(id, fileImage.FileName);
                        if (File.Exists(fileName)) File.Delete(fileName);
                        thumbImage.Save(fileName);
                        
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
                    Mobile.DomainObjects.Accessories Accessories = new Mobile.DomainObjects.Accessories();
                    Accessories.AccessoriesName = txtAccessoriesName.Text;
                    Accessories.AccessoriesPrice = txtPrice.Text;
                    Accessories.ShortContent = txtShortContent.Text;
                    Accessories.DetailContent = fckDetail.Value;
                    Accessories.ImageLink = path;
                    Accessories.CreatedDate = DateTime.Now;
                    int categoryID=0;
                    int.TryParse(ddlCategory.SelectedValue, out categoryID);
                    Accessories.CategoryAcc = ProductService.GetCategoryAcc(categoryID);
                    ProductService.InsertAccessories(Accessories);
                    PopulateControl();
                }
                //Edit 
                else
                {
                    Mobile.DomainObjects.Accessories Accessories = ProductService.GetAccessories(mCurrentID);
                    if (Accessories != null)
                    {
                        Accessories.AccessoriesName = txtAccessoriesName.Text;
                        Accessories.AccessoriesPrice = txtPrice.Text;
                        Accessories.ShortContent = txtShortContent.Text;
                        Accessories.DetailContent = fckDetail.Value;
                        if (path.Length > 0) Accessories.ImageLink = path;

                        Accessories.CreatedDate = DateTime.Now;
                        int categoryID = 0;
                        int.TryParse(ddlCategory.SelectedValue, out categoryID);
                        Accessories.CategoryAcc = ProductService.GetCategoryAcc(categoryID);

                        ProductService.UpdateAccessories(Accessories);
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

                ProductService.DeleteAccessories(mCurrentID);
                Response.Redirect("Default.aspx");
            }
        }
        #endregion

        protected void ddlCategory_Init(object sender, EventArgs e)
        {
            IList<Mobile.DomainObjects.CategoryAcc> list= ProductService.GetCategoryAcc();
            if (list != null && list.Count > 0)
            {
                foreach (Mobile.DomainObjects.CategoryAcc item in list)
                {
                    ddlCategory.Items.Add(new ListItem(item.CategoryAccName, item.ID.ToString()));
                }
            }
        }
}
}
