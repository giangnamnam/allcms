using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.Configuration;


namespace MobileTech.Admin.UserManagement
{
    public partial class UserList : System.Web.UI.Page
    {
        const char SplitName = '@';
        protected void Page_Load(object sender, EventArgs e)
        {

            GridViewMemberUser.EditIndex = -1;

            if (CheckBoxAddUser.Checked)
            {
                divCreateUsers.Visible = true;
            }
            else
            {
                divCreateUsers.Visible = false;
            }

            //if (CheckBoxManageRoles.Checked)
            //{
            //    divManageRoles.Visible = true;
            //    divCreateRoles.Visible = true;
            //}
            //else
            //{
            //    divManageRoles.Visible = false;
            //    divCreateRoles.Visible = false;
            //}

            // Grab first username and load roles below
            if (!IsPostBack)
            {
                FindFirstUserName();
            }
        }

        /// <summary>
        /// Used to retrieve the first user that would normally be processed
        /// by the Membership List
        /// </summary>
        private void FindFirstUserName()
        {
            MembershipUserCollection muc = Membership.GetAllUsers();
            foreach (MembershipUser mu in muc)
            {
                // Just grab the first name then break out of loop
                string userName = mu.UserName;
                ObjectDataSourceRoleObject.SelectParameters["UserName"].DefaultValue = userName;
                break;
            }
            //MembershipUtilities.MembershipUserODS.Update()
        }


        protected void GridViewMembershipUser_SelectedIndexChanged(object sender, EventArgs e)
        {

            LabelInsertMessage.Text = "";

            GridView gv = (GridView)sender;

            // cover case where there is no current user

            MembershipUser user = Membership.GetUser(string.Format("{0}", gv.SelectedValue));
            if (user != null)
            {

                ObjectDataSourceRoleObject.SelectParameters["UserName"].DefaultValue = user.UserName;
                ObjectDataSourceRoleObject.SelectParameters["ShowOnlyAssignedRolls"].DefaultValue = "true";

                LabelUserName.Text = user.UserName;
                int index = 0;
                foreach (ListItem item in RadioButtonRoleList1.Items)
                {
                    if (Roles.IsUserInRole(item.Value))
                        RadioButtonRoleList1.SelectedIndex = index;
                    index++;
                }
                IList<Mobile.DomainObjects.UsersInContacts> list = ProductService.GetUsersInContacts(user.UserName);
                if (list.Count > 0)
                {
                    index = 0;
                    foreach (ListItem item in ddlShop1.Items)
                    {
                        if (list[0].Contact.ContactName == item.Text)
                            ddlShop1.SelectedIndex = index;
                        index++;
                    }
                }
                
                TextBoxEmail1.Text = user.Email;
                if (user.Comment != null && user.Comment.Length > 0)
                {
                    TextBoxFirstName1.Text = user.Comment.Split(SplitName)[0];
                    TextBoxLastName1.Text = user.Comment.Split(SplitName)[1];
                }
                CheckboxApproval1.Checked = user.IsApproved;

            }
            GridViewRole.DataBind();
        }
        protected void ButtonCreateNewRole_Click(object sender, EventArgs e)
        {
            //if (TextBoxCreateNewRole.Text.Length > 0)
            //{
            //    ObjectDataSourceRoleObject.InsertParameters["RoleName"].DefaultValue = TextBoxCreateNewRole.Text; ;
            //    ObjectDataSourceRoleObject.Insert();
            //    GridViewRole.DataBind();
            //    TextBoxCreateNewRole.Text = "";
            //}
        }

        protected void ToggleInRole_Click(object sender, EventArgs e)
        {
            // Grab text from button and parse, not so elegant, but gets the job done
            Button bt = (Button)sender;
            string buttonText = bt.Text;

            char[] seps = new char[1];
            seps[0] = ' ';
            string[] buttonTextArray = buttonText.Split(seps);
            string roleName = buttonTextArray[4];
            string userName = buttonTextArray[1];
            string whatToDo = buttonTextArray[0];
            string[] userNameArray = new string[1];
            userNameArray[0] = userName;  // Need to do this because RemoveUserFromRole requires string array.

            if (whatToDo.StartsWith("Un"))
            {
                // need to remove assignment of this role to this user
                Roles.RemoveUsersFromRole(userNameArray, roleName);
            }
            else
            {
                Roles.AddUserToRole(userName, roleName);
            }
            GridViewRole.DataBind();
        }

        protected void ButtonNewUser_Click(object sender, EventArgs e)
        {
            if (TextBoxUserName.Text.Length > 0 && TextBoxPassword.Text.Length > 0)
            {
                string userName = TextBoxUserName.Text;
                ObjectDataSourceMembershipUser.InsertParameters["UserName"].DefaultValue = userName;
                ObjectDataSourceMembershipUser.InsertParameters["password"].DefaultValue = TextBoxPassword.Text;
                ObjectDataSourceMembershipUser.InsertParameters["comment"].DefaultValue = TextBoxFirstName.Text + SplitName + TextBoxLastName.Text;
                ObjectDataSourceMembershipUser.InsertParameters["passwordQuestion"].DefaultValue = "abc";
                ObjectDataSourceMembershipUser.InsertParameters["passwordAnswer"].DefaultValue = "abc";
                ObjectDataSourceMembershipUser.InsertParameters["email"].DefaultValue = TextBoxEmail.Text;
                ObjectDataSourceMembershipUser.InsertParameters["isApproved"].DefaultValue = CheckboxApproval.Checked == true ? "true" : "false";

                ObjectDataSourceMembershipUser.Insert();
                GridViewMemberUser.DataBind();

                string roleName = RadioButtonRoleList.SelectedValue;
                if (Roles.GetRolesForUser(userName).Length > 0)
                {
                    Roles.RemoveUserFromRoles(userName, Roles.GetRolesForUser(userName));
                }
                Roles.AddUserToRole(userName, roleName);
               

                //Add new UsersInContracts
                Mobile.DomainObjects.UsersInContacts userInContract = new Mobile.DomainObjects.UsersInContacts();
                userInContract.UserName = userName;
                if (ddlShop.SelectedValue != null)
                {
                    int id = int.Parse(ddlShop.SelectedValue);
                    userInContract.Contact = ProductService.Instance.ContactRepository.GetObjectByID(id);
                }
                ProductService.InsertUsersInContacts(userInContract);

                TextBoxUserName.Text = "";
                TextBoxPassword.Text = "";
                TextBoxEmail.Text = "";
                TextBoxFirstName.Text = "";
                TextBoxLastName.Text = "";
                CheckboxApproval.Checked = false;
            }
        }

        protected void GridViewMembership_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            FindFirstUserName();  // Current user is deleted so need to select a new user as current
            GridViewRole.DataBind(); // update roll lists to reflect new counts
        }


        protected string ShowNumberUsersInRole(int numUsersInRole)
        {
            string result;
            result = "Number of Users In Role: " + numUsersInRole.ToString();
            return result;
        }

        protected string ShowInRoleStatus(string userName, string roleName)
        {
            string result;

            if (userName == null | roleName == null)
            {
                return "No UserName Specified";
            }

            if (Roles.IsUserInRole(userName, roleName) == true)
            {
                result = "Unassign " + userName + " From Role " + roleName;
            }
            else
            {
                result = "Assign " + userName + " To Role " + roleName;
            }

            return result;
        }


        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridViewMemberUser.DataBind();
        }
        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
        protected void ObjectDataSourceMembershipUser_Inserted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                if (e.Exception.InnerException.Message == "InvalidPassword")
                {
                    MembershipSection membershipConfig = (MembershipSection)WebConfigurationManager.GetSection("system.web/membership");
                    var providerSettings = membershipConfig.Providers[membershipConfig.DefaultProvider];
                    string minLength = providerSettings.Parameters["minRequiredPasswordLength"];
                    string minAlpha = providerSettings.Parameters["minRequiredNonalphanumericCharacters"];

                    LabelInsertMessage.Text = string.Format("Password must be at least {0} characters in length and contain at least {1} special character",
                        minLength, minAlpha);
                }
                else LabelInsertMessage.Text = e.Exception.InnerException.Message + ". Insert Failed";
                
                LabelInsertMessage.ForeColor = System.Drawing.Color.Red;

                e.ExceptionHandled = true;
            }
            else
            {
                LabelInsertMessage.Text = "Member " + TextBoxUserName.Text + ". Inserted Successfully.";
                LabelInsertMessage.ForeColor = System.Drawing.Color.Green;
            }
        }


        protected void TextBoxSearchUser_TextChanged(object sender, EventArgs e)
        {
            //GridViewMemberUser.DataBind();
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            GridViewMemberUser.DataBind();
        }

        protected void RadioButtonRoleList_Init(object sender, EventArgs e)
        {
            foreach (string role in Roles.GetAllRoles())
            {
                RadioButtonRoleList.Items.Add(new ListItem(role, role));
            }
            if (RadioButtonRoleList.Items.Count > 0)
            {
                RadioButtonRoleList.SelectedIndex = 0;

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (TextBoxSearchUser.Text.Length > 0)
            {
                GridViewMemberUser.DataBind();

                TextBoxUserName.Text = "";
                TextBoxPassword.Text = "";
                TextBoxEmail.Text = "";
                TextBoxFirstName.Text = "";
                TextBoxLastName.Text = "";
                CheckboxApproval.Checked = false;

                TextBoxEmail1.Text = "";
                TextBoxFirstName1.Text = "";
                TextBoxLastName1.Text = "";
                CheckboxApproval1.Checked = false;
            }
        }

        protected void ddlShop_Init(object sender, EventArgs e)
        {
            foreach (Mobile.DomainObjects.Contact item in ProductService.GetContact())
            {
                ddlShop.Items.Add(new ListItem(item.ContactName, item.ID.ToString()));
            }
        }

        protected void RadioButtonRoleList1_Init(object sender, EventArgs e)
        {
            foreach (string role in Roles.GetAllRoles())
            {
                RadioButtonRoleList1.Items.Add(new ListItem(role, role));
            }
        }

        protected void ddlShop1_Init(object sender, EventArgs e)
        {
            foreach (Mobile.DomainObjects.Contact item in ProductService.GetContact())
            {
                ddlShop1.Items.Add(new ListItem(item.ContactName, item.ID.ToString()));
            }
        }

        protected void ButtonUpdateUser_Click(object sender, EventArgs e)
        {
            if (LabelUserName.Text.Length > 0)
            {   string userName=LabelUserName.Text;
                //Update
                ObjectDataSourceMembershipUser.UpdateParameters["UserName"].DefaultValue = userName;
                ObjectDataSourceMembershipUser.UpdateParameters["comment"].DefaultValue = TextBoxFirstName1.Text + SplitName + TextBoxLastName1.Text;
                ObjectDataSourceMembershipUser.UpdateParameters["email"].DefaultValue = TextBoxEmail1.Text;
                ObjectDataSourceMembershipUser.UpdateParameters["isApproved"].DefaultValue = CheckboxApproval1.Checked == true ? "true" : "false";

                ObjectDataSourceMembershipUser.Update();
                GridViewMemberUser.DataBind();

                //Update Role
                string roleName = RadioButtonRoleList1.SelectedValue;
                if (Roles.GetRolesForUser(userName).Length > 0)
                {
                    Roles.RemoveUserFromRoles(userName, Roles.GetRolesForUser(userName));
                }
                Roles.AddUserToRole(userName, roleName);
                

                //Update new UsersInContracts
                ProductService.DeleteUsersInContacts(userName);
                Mobile.DomainObjects.UsersInContacts userInContract = new Mobile.DomainObjects.UsersInContacts();
                userInContract.UserName = userName;
                if (ddlShop1.SelectedValue != null)
                {
                    int id = int.Parse(ddlShop1.SelectedValue);
                    userInContract.Contact = ProductService.Instance.ContactRepository.GetObjectByID(id);
                }
                ProductService.InsertUsersInContacts(userInContract);


                //LabelUserName.Text = "";
                //TextBoxEmail1.Text = "";
                //TextBoxFirstName1.Text = "";
                //TextBoxLastName1.Text = "";
                //CheckboxApproval1.Checked = false;
            }
        }
    }
}
