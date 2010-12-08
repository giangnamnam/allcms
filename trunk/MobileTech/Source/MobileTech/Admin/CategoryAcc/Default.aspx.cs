﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.CategoryAcc
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grvProductList.EditIndex = -1;
        }
        protected void grvProductList_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Length > 0)
            {
                ObjectDataSourceCategoryAcc.InsertParameters["CategoryAccName"].DefaultValue = txtName.Text; ;
                ObjectDataSourceCategoryAcc.InsertParameters["CategoryAccDescription"].DefaultValue = txtDescription.Text;


                ObjectDataSourceCategoryAcc.Insert();
                ObjectDataSourceCategoryAcc.Select();
                grvProductList.DataBind();

                txtName.Text = "";
                txtDescription.Text = "";
            }
        }
}
}
