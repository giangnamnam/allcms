﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" ValidateRequest="false" Inherits="MobileTech.Admin.SiteManagement.Default" Codebehind="Default.aspx.cs" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <table style="height:500; width:100%">
             <tr>
                <td>
                    Short About
                </td>
            </tr>
            <tr>
                <td style="height:300px">
                    <FCKeditorV2:FCKeditor ID="fckShortAbout" runat="server" Height="350px" Width="100%"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
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
                    Repair
                </td>
            </tr>
            <tr>
                <td style="height:300px">
                    <FCKeditorV2:FCKeditor ID="fckRepair" runat="server" Height="350px" Width="100%"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                    Unclock
                </td>
            </tr>
            <tr>
                <td style="height:300px">
                    <FCKeditorV2:FCKeditor ID="fckUnclock" runat="server" Height="350px" Width="100%"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                    Ipad
                </td>
            </tr>
            <tr>
                <td style="height:300px">
                    <FCKeditorV2:FCKeditor ID="fckIpad" runat="server" Height="350px" Width="100%"
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

