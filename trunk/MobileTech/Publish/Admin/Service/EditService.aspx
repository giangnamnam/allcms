﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" ValidateRequest="false"
    CodeFile="EditService.aspx.cs" Inherits="MobileTech.Admin.Service.EditService" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlAdd" Width="100%" runat="server">
        <table width="100%" border="1">
            <tr>
                <td colspan="2">
                    <strong>Service Information </strong>
                </td>
            </tr>
            <tr>
                <td style="height: 51px; width: 110px">
                    Service Name: (*)&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtServiceName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                        ControlToValidate="txtServiceName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Short Content: (*)&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtShortContent" runat="server" Width="300px" TextMode="MultiLine" Height="40px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        ControlToValidate="txtShortContent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Image:
                </td>
                <td>
                    <asp:FileUpload ID="fileImage" runat="server" Width="300px" />
                    (*.jpg, *.bmp, *.gif, *. png)
                </td>
            </tr>
            <tr>
                <td>
                    Detail Content:
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <FCKeditorV2:FCKeditor ID="fckDetail" runat="server" Height="350px" Width="850px"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="90px" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="90px" Visible="false"
                        OnClick="btnDelete_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" CausesValidation="False"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
