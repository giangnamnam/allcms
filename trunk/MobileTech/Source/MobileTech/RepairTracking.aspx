<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    Inherits="MobileTech.RepairTracking" CodeBehind="RepairTracking.aspx.cs" %>

<%@ Register Src="UIControls/LeftMenu.ascx" TagName="LeftMenu" TagPrefix="uc1" %>
<%@ Register Src="UIControls/SiteMap.ascx" TagName="SiteMap" TagPrefix="uc2" %>
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
                            <p style="color: White; font-size: medium; vertical-align: middle">
                                Tracking Summary</p>
                        </h2>
                    </div>
                    <div id="content-small">
                        <div class="content-news">
                            <asp:Label ID="lblNotes" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                            <table width="100%" id="TableRepairContent" runat="server">
                                 <tr>
                                    <td colspan="2">
                                        <table width="100%" border="0">
                                            <tr>
                                                <td style="width: 15%">Repair No.:</td>
                                                <td style="width: 35%"><asp:Label ID="lblRepairNo" runat="server" Font-Bold="true"></asp:Label></td>
                                                <td style="width: 15%"> Status:</td>
                                                <td style="width: 35%"><asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Shop Name:</td>
                                                <td><asp:Label ID="lblShopName" runat="server" Font-Bold="true"></asp:Label></td>
                                                <td> Phone (T):</td>
                                                <td><asp:Label ID="lblPhoneT" runat="server" Font-Bold="true"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Phone (F):</td>
                                                <td><asp:Label ID="lblPhoneF" runat="server" Font-Bold="true"></asp:Label></td>
                                                <td> Phone (M):</td>
                                                <td><asp:Label ID="lblPhoneM" runat="server" Font-Bold="true"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Email:</td>
                                                <td><asp:Label ID="lblEmail" runat="server" Font-Bold="true"></asp:Label></td>
                                                <td> Address:</td>
                                                <td><asp:Label ID="lbAddress" runat="server" Font-Bold="true"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left" style="background-color: Gray; height: 20px;">
                                        <strong style="color: White">Customer Information</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left">
                                        <table width="100%" border="1">
                                            <tr>
                                                <td style="width: 50%">
                                                    Name:&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="lblCusName" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                                <td style="width: 50%">
                                                    Date:&nbsp;
                                                    <asp:Label ID="lblCusDate" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Contact:
                                                    <asp:Label ID="lblCusContact" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 10px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left" style="background-color:Gray; height: 20px;">
                                        <strong style="color: White">Product Information </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left">
                                        <table width="100%" border="1">
                                            <tr>
                                                <td>
                                                    Model:&nbsp;
                                                    <asp:Label ID="lblProductModel" runat="server" Font-Bold="true" Width="150px"></asp:Label>
                                                    Colour:&nbsp;&nbsp;
                                                    <asp:Label ID="lblProductColour" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                                <td>
                                                    IMEI:&nbsp;&nbsp;
                                                    <asp:Label ID="lblProductIMEI" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="top">
                                                    Fault Report:
                                                    <asp:Label ID="lblProductFaultReport" runat="server" Height="40"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <table width="100%" border="1">
                                                        <tr>
                                                            <td align="center">
                                                                No Sim
                                                                <br />
                                                                <asp:CheckBox ID="chkNoSim" runat="server" Font-Bold="true" />
                                                            </td>
                                                            <td align="center">
                                                                WB
                                                                <br />
                                                                <asp:Label ID="lblWB" runat="server" Font-Bold="true"></asp:Label>
                                                            </td>
                                                            <td align="center">
                                                                NB
                                                                <br />
                                                                <asp:Label ID="lblNB" runat="server" Font-Bold="true"></asp:Label>
                                                            </td>
                                                            <td align="center">
                                                                Memory Card
                                                                <br />
                                                                <asp:Label ID="lblMemoryCardY" runat="server" Text="Y"></asp:Label>
                                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="lblMemoryCardN" runat="server" Text="N"></asp:Label>
                                                            </td>
                                                            <td align="center" style="width: 50%;">
                                                                Exterior Condition: (New > Total Damaged)
                                                                <br />
                                                                <label id="lblExteriorCondition" runat="server">
                                                                </label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
