﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true" Inherits="MobileTech.Unclock" Codebehind="Unclock.aspx.cs" %>
<%@ Register src="UIControls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UIControls/SiteMap.ascx" tagname="SiteMap" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table id="container" style="vertical-align: middle">
        <tr>
            <td id="sub-nav">
                <uc1:LeftMenu ID="LeftMenu1" runat="server" />
            </td>
            <td>
                <div id="main-content">
                    <div class="title" style="vertical-align: bottom; color: Red">
                      
                        <uc2:SiteMap ID="SiteMap1" runat="server" />
                      
                    </div>
                    <div class="title" style="margin-top: 4px; vertical-align: middle">
                        <h2>
                            <p style="color: White; font-size: medium; vertical-align: middle"">
                                Unlock</p>
                        </h2>
                    </div>
                    <div id="content-small">
                        <div class="content-news">
                            <label runat="server" id="lblAbout">
                            </label>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
