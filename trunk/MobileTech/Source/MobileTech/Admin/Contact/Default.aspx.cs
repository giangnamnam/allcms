using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.Contact
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grvProductList.EditIndex = -1;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Length > 0)
            {
                ObjectDataSourceContact.InsertParameters["ContactName"].DefaultValue = txtName.Text; ;
                ObjectDataSourceContact.InsertParameters["ContactAddress"].DefaultValue = txtAddress.Text;
                ObjectDataSourceContact.InsertParameters["ContactGoogleAddress"].DefaultValue = txtGoogleAddress.Text;
                ObjectDataSourceContact.InsertParameters["ContactPhone1"].DefaultValue = txtPhone1.Text;
                ObjectDataSourceContact.InsertParameters["ContactPhone2"].DefaultValue = txtPhone2.Text;
                ObjectDataSourceContact.InsertParameters["ContactMobilePhone"].DefaultValue = txtMobilePhone.Text;
                ObjectDataSourceContact.InsertParameters["ContactEmail"].DefaultValue = txtEmail.Text;


                ObjectDataSourceContact.Insert();
                ObjectDataSourceContact.Select();
                grvProductList.DataBind();

                txtName.Text = "";
                txtAddress.Text = "";
                txtGoogleAddress.Text = "";
                txtPhone1.Text = "";
                txtPhone2.Text = "";
                txtMobilePhone.Text = "";
                txtEmail.Text = "";
            }
        }
    }
}
