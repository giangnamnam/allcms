<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SiteMap.ascx.cs" Inherits="MobileTech.UIControls.SiteMap" %>

&nbsp;&nbsp;

<asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="14px"
    PathSeparator=" > " ParentLevelsDisplayed="2"
    RenderCurrentNodeAsLink="True">
    <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
    <CurrentNodeStyle ForeColor="Red" />
    <NodeStyle Font-Bold="True" ForeColor="#990000" />
    <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
</asp:SiteMapPath>
