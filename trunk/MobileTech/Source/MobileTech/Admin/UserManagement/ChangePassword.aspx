<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" Inherits="MobileTech.Admin.UserManagement.ChangePassword" Codebehind="ChangePassword.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:300px">
    <asp:ChangePassword ID="ChangePassword1" runat="server" 
            TitleTextStyle-Font-Bold="true" 
            ContinueDestinationPageUrl="~/Admin/Service/Default.aspx">
<TitleTextStyle Font-Bold="True"></TitleTextStyle>
    </asp:ChangePassword>
    </div>
</asp:Content>
