<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" ValidateRequest="false"
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
                    <FCKeditorV2:FCKeditor ID="fckAbout" runat="server" Height="350px" Width="100%"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnOK" UseSubmitBehavior="true" runat="server" Text="Save" 
                        Width="90px" onclick="btnOK_Click" />
                </td>
            </tr>
        </table>
</asp:Content>

