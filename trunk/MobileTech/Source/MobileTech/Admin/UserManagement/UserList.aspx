<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" Inherits="MobileTech.Admin.UserManagement.UserList" Codebehind="UserList.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <atlas:ScriptManager ID="sm" runat="server" EnablePartialRendering="false">
        <Scripts>
            <atlas:ScriptReference Path="ScriptLibrary/TextChangedBehavior.js" />
        </Scripts>
    </atlas:ScriptManager>

    <script type="text/javascript">
        function onTextChange() {
            __doPostBack('GridViewMemberUser', '');
        }
    </script>

    <table border="1" cellpadding="1" cellspacing="2" width="100%">
        <tr>
            <td align="center" style="height: 200px; vertical-align:top">
                <b>
                    <br />
                    List of the site users</b><br />
                <table cellpadding="5">
                    <tr>
                        <td style="width: 149px">
                            <asp:Label ID="Label1" runat="server" Text="Enter User Name:"></asp:Label>
                        </td>
                        <td style="width: 142px">
                            <asp:TextBox ID="TextBoxSearchUser" runat="server" OnTextChanged="TextBoxSearchUser_TextChanged"></asp:TextBox>
                        </td>
                        <td style="width: 17px">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" 
                                onclick="btnSearch_Click" />
                        </td>
                        <td style="width: 100px">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
                <%--<atlas:UpdatePanel ID="UpdatePanelUserList" runat="server" Mode="Always">
                    <ContentTemplate>--%>
                        <table cellpadding="5">
                        </table>
                        <asp:GridView ID="GridViewMemberUser" runat="server" OnSelectedIndexChanged="GridViewMembershipUser_SelectedIndexChanged"
                            OnRowDeleted="GridViewMembership_RowDeleted" AllowPaging="True" AutoGenerateColumns="False"
                            DataKeyNames="UserName" DataSourceID="ObjectDataSourceMembershipUser" AllowSorting="True"
                            CellPadding="1" Font-Size="Small" Width="95%" ForeColor="#333333" GridLines="None" RowStyle-HorizontalAlign="Left"
                            BorderColor="White">
                            <Columns>
                                
                                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True" SortExpression="UserName" />
                                <%--<asp:BoundField DataField="Comment" HeaderText="Full Name" SortExpression="Comment" ItemStyle-Width="200"/>--%>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <%--<asp:BoundField DataField="PasswordQuestion" HeaderText="PasswordQuestion" ReadOnly="True"
                                    SortExpression="PasswordQuestion" />--%>
                                <%--<asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />--%>
                                <asp:BoundField DataField="CreationDate" HeaderText="Creation Date" ReadOnly="True"
                                    SortExpression="CreationDate" Visible="False"/>
                                <asp:CheckBoxField DataField="IsApproved" HeaderText="Is Approved" SortExpression="IsApproved" Visible="False"/>
                                <asp:BoundField DataField="LastLockoutDate" Visible="False" HeaderText="LastLockoutDate"
                                    ReadOnly="True" SortExpression="LastLockoutDate" />
                                <asp:BoundField DataField="LastLoginDate" HeaderText="Last Login Date" SortExpression="LastLoginDate" />
                                <asp:CheckBoxField DataField="IsOnline" Visible="true" HeaderText="Is Online" ReadOnly="True"
                                    SortExpression="IsOnline" />
                                <asp:CheckBoxField DataField="IsLockedOut" HeaderText="IsLockedOut" ReadOnly="True"
                                    SortExpression="IsLockedOut" Visible="False" />
                                <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate"
                                    Visible="False" />
                                <asp:BoundField DataField="LastPasswordChangedDate" HeaderText="LastPasswordChangedDate"
                                    Visible="False" ReadOnly="True" SortExpression="LastPasswordChangedDate" />
                                <asp:BoundField DataField="ProviderName" HeaderText="ProviderName" ReadOnly="True"
                                    Visible="False" SortExpression="ProviderName" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                            CommandName="Edit" Text="Edit"></asp:LinkButton>--%>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                            CommandName="Select" Text="Select"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                                            CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this user?');"></asp:LinkButton>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="False" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                   <%-- </ContentTemplate>
                </atlas:UpdatePanel>--%>
                <asp:ObjectDataSource ID="ObjectDataSourceMembershipUser" runat="server" DeleteMethod="Delete"
                    SelectMethod="GetMembers" TypeName="MembershipUtilities.MembershipUserODS" UpdateMethod="Update"
                    SortParameterName="SortData" OnInserted="ObjectDataSourceMembershipUser_Inserted"
                    OldValuesParameterFormatString="{0}" InsertMethod="Insert">
                    <DeleteParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="isApproved" Type="Boolean" />
                        <asp:Parameter Name="comment" Type="String" />
                        <asp:Parameter Name="lastActivityDate" Type="DateTime" />
                        <asp:Parameter Name="lastLoginDate" Type="DateTime" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="returnAllApprovedUsers" Type="Boolean" />
                        <asp:Parameter DefaultValue="true" Name="returnAllNotApprovedUsers" Type="Boolean" />
                        <asp:ControlParameter ControlID="TextBoxSearchUser" DefaultValue="" Name="usernameToFind"
                            PropertyName="Text" Type="String" />
                        <asp:Parameter Name="sortData" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userName" Type="String" />
                        <asp:Parameter Name="isApproved" Type="Boolean" />
                        <asp:Parameter Name="comment" Type="String" />
                        <asp:Parameter Name="lastLockoutDate" Type="DateTime" />
                        <asp:Parameter Name="creationDate" Type="DateTime" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="lastActivityDate" Type="DateTime" />
                        <asp:Parameter Name="providerName" Type="String" />
                        <asp:Parameter Name="isLockedOut" Type="Boolean" />
                        <asp:Parameter Name="lastLoginDate" Type="DateTime" />
                        <asp:Parameter Name="isOnline" Type="Boolean" />
                        <asp:Parameter Name="passwordQuestion" Type="String" />
                        <asp:Parameter Name="lastPasswordChangedDate" Type="DateTime" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="passwordAnswer" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <table style="font-weight: normal; font-size: 12px; font-family: Arial" bgcolor="white"
                    width="100%" border="0" cellpadding="1" cellspacing="2">
                    <tr valign="top" bgcolor="#CCFFFF">
                        <%--<td align="center" width="40%">
                            <b>Management of roles</b><br /><br />
                            <asp:CheckBox ID="CheckBoxShowRolesAssigned" runat="server" AutoPostBack="True" Text="Show Roles Assigned Only" />
                            <br />
                            <br />
                           
                                    <asp:GridView ID="GridViewRole" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceRoleObject"
                                        DataKeyNames="RoleName" CellPadding="4" AllowPaging="True" HorizontalAlign="Center"
                                        Width="100%" ForeColor="#333333" GridLines="None">
                                        <RowStyle BackColor="#EFF3FB" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" DeleteText="Delete Role" Visible="false"/>
                                            <asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                                   <asp:Button ID="Button1" runat="server" CausesValidation="false" Width="250px" OnClick="ToggleInRole_Click"
                                                        Text='<%# ShowInRoleStatus( (string) Eval("UserName"),(string) Eval("RoleName")) %>' />
                                                    
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" />
                                                <HeaderTemplate>
                                                    Status of roles for selected user
                                                </HeaderTemplate>
                                            </asp:TemplateField>
                                            
                                            <asp:BoundField DataField="RoleName" ReadOnly="True" Visible="true" HeaderText="Role Name"
                                                SortExpression="RoleName" />
                                            <asp:CheckBoxField DataField="UserInRole" HeaderText="User In Role" Visible="true"
                                                SortExpression="UserInRole" />
                                            <asp:BoundField DataField="NumberOfUsersInRole" HeaderText="Number Of Users In Role"
                                                SortExpression="NumberOfUsersInRole" />
                                        </Columns>
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                
                            
                            
                        </td>--%>
                        
                        
                       <%--<td align="center" width="20%">
                            <div runat="server" id="divCreateRoles">
                               
                                        <b>Creator of new role</b><br />
                                        <br />
                                        <asp:TextBox ID="TextBoxCreateNewRole" runat="server"></asp:TextBox><br />
                                        <br />
                                        <asp:Button ID="ButtonCreateNewRole" runat="server" OnClick="ButtonCreateNewRole_Click"
                                            Text="Create New Role" /><br />
                                   
                            </div>
                        </td>--%>
                        
                        
                        <td align="center" width="30%">
                            <b>Update User</b><br />
                            <br />
                            <div runat="server" id="divUpdates">
                              <%--  <atlas:UpdatePanel ID="UpdatePanelCreateUser" runat="server">
                                    <ContentTemplate>--%>
                                        <table cellpadding="2" cellspacing="2">
                                            <tr>
                                                <td style="height: 28px">
                                                    <asp:Label ID="Label3" Text="User Name:" runat="server"></asp:Label>
                                                </td>
                                                <td style="height: 28px" align="left">
                                                    <asp:Label ID="LabelUserName" Text="" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                            </tr>
                                           
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label7" Text="Role:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList ID="RadioButtonRoleList1" runat="server" 
                                                        RepeatDirection="Horizontal" oninit="RadioButtonRoleList1_Init">
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" Text="Shop:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlShop1" runat="server" Width="150px" 
                                                        oninit="ddlShop1_Init">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td>
                                                    <asp:Label ID="Label8" Text="First Name:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxFirstName1" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" Text="Last Name:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxLastName1" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                           
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label2" Text="Email:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxEmail1" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label9" Text="Approved:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckboxApproval1" runat="server"></asp:CheckBox>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <asp:Button ID="ButtonUpdateUser" runat="server" Text="Update" 
                                                        onclick="ButtonUpdateUser_Click" Enabled="false" />
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="LabelInsertMessage1" runat="server"></asp:Label>
                                   <%-- </ContentTemplate>
                                </atlas:UpdatePanel>--%>
                            </div>
                        </td>
                        <td align="center" width="30%">
                            <div runat="server" id="divResetPassword">
                               
                                        <b>Set Password</b><br />
                                        <br />
                                         <table cellpadding="2" cellspacing="2">
                                            <tr>
                                                <td style="height: 28px">
                                                    <asp:Label ID="Label4" Text="User Name:" runat="server"></asp:Label>
                                                </td>
                                                <td style="height: 28px" align="left">
                                                    <asp:Label ID="LabelUserName2" Text="" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td style="height: 28px">
                                                    <asp:Label ID="Label19" Text="New Password:" runat="server"></asp:Label>
                                                </td>
                                                <td style="height: 28px" align="left">
                                                    <asp:TextBox ID="TextBoxPassword2" runat="server" TextMode="Password"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 28px">
                                                </td>
                                                <td style="height: 28px" align="left">
                                                    <asp:Button ID="ButtonResetPassword" runat="server" Text="Set" Enabled="false" 
                                                        onclick="ButtonResetPassword_Click" Width="70"/>
                                                </td>
                                            </tr>
                                        </table>    
                                  <asp:Label ID="LabelSetPassword" runat="server"></asp:Label>
                            </div>
                        </td>
                        <td align="center" width="30%">
                            <b>Creator of new user</b><br />
                            <br />
                            <div runat="server" id="divCreateUsers">
                              <%--  <atlas:UpdatePanel ID="UpdatePanelCreateUser" runat="server">
                                    <ContentTemplate>--%>
                                        <table cellpadding="2" cellspacing="2">
                                            <tr>
                                                <td style="height: 28px">
                                                    <asp:Label ID="Label10" Text="User Name:" runat="server"></asp:Label>
                                                </td>
                                                <td style="height: 28px">
                                                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 28px">
                                                    <asp:Label ID="Label11" Text="Password:" runat="server"></asp:Label>
                                                </td>
                                                <td style="height: 28px">
                                                    <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label12" Text="Role:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList ID="RadioButtonRoleList" runat="server" RepeatDirection="Horizontal"
                                                        oninit="RadioButtonRoleList_Init">
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label13" Text="Shop:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlShop" runat="server" Width="150px" 
                                                        oninit="ddlShop_Init">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td>
                                                    <asp:Label ID="Label14" Text="First Name:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxFirstName" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label15" Text="Last Name:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxLastName" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <%--<tr>
                                                <td>
                                                    <asp:Label ID="Label5" Text="Password Question:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxPasswordQuestion" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" Text="Password Answer:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxPasswordAnswer" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>--%>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label16" Text="Email:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label17" Text="Approved:" runat="server"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckboxApproval" runat="server"></asp:CheckBox>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <asp:Button ID="ButtonNewUser" runat="server" Text="Create New User" OnClick="ButtonNewUser_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="LabelInsertMessage" runat="server"></asp:Label>
                                   <%-- </ContentTemplate>
                                </atlas:UpdatePanel>--%>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <atlas:UpdatePanel ID="UpdatePanelCheckBoxes" runat="server">
        <ContentTemplate>
            <table style="font-weight: normal; font-size: 12px; font-family: Arial" border="0"
                cellpadding="1" cellspacing="2" bgcolor="white" width="100%">
                <tr bgcolor="#CCFFFF">
                    <td align="left">
                       <%-- <asp:CheckBox ID="CheckBoxManageRoles" Text="Manage Roles" runat="server" AutoPostBack="True"
                            Checked="True" />--%>
                    </td>
                    <td align="right">
                        <asp:CheckBox ID="CheckBoxAddUser" TextAlign="left" Text="Create New Users" runat="server"
                            AutoPostBack="True" Checked="True" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </atlas:UpdatePanel>
    
    <table style="font-weight: normal; font-size: 12px; font-family: Arial" border="0"
        cellpadding="1" cellspacing="2" bgcolor="white" width="100%">
        <tr bgcolor="#CCFFFF">
            <td align="center">
                <br />
                <%--<asp:HyperLink ID="HyperLinkDevBy" runat="server" NavigateUrl="http://PeterKellner.net">Developed by http://peterkellner.net</asp:HyperLink>--%>
                <br />
            </td>
        </tr>
    </table>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSourceRoleObject" runat="server" SelectMethod="GetRoles"
        TypeName="MembershipUtilities.RoleDataObject" InsertMethod="Insert" DeleteMethod="Delete">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridViewMemberUser" Name="UserName" PropertyName="SelectedValue"
                Type="String" />
            <%--<asp:ControlParameter ControlID="CheckBoxShowRolesAssigned" Name="ShowOnlyAssignedRolls"
                PropertyName="Checked" Type="Boolean" />--%>
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="RoleName" Type="String" />
        </InsertParameters>
        <DeleteParameters>
            <asp:Parameter Name="RoleName" Type="String" />
        </DeleteParameters>
    </asp:ObjectDataSource>

    <script type="text/xml-script">
        <page>
            <components>
                <textBox id="TextBoxSearchUser">
                    <behaviors>
                        <textChangedBehavior timeout="100"
                          changed="onTextChange" />
                    </behaviors>
                </textBox>
            </components>
        </page>
    </script>

</asp:Content>
