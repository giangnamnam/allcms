<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MobileTech.Admin.SiteManagement.Default" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="MobileTech.Admin.SiteManagement.Default" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <table style="height:500; width:100%">
            <tr>
                <td>
                    About
                </td>
            </tr>
            <tr>
                <td style="height:300px">
                    <FCKeditorV2:FCKeditor ID="fckDescription" runat="server" Height="350px" Width="100%"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnOK" UseSubmitBehavior="true" runat="server" Text="Save" Width="90px" />
                </td>
            </tr>
        </table>
</asp:Content>
    <%--</form>
</body>
</html>--%>

