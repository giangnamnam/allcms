<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    CodeFile="Services.aspx.cs" Inherits="MobileTech.Services" %>
<%@ Register src="UIControls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
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
                        Home > Services
                    </div>
                    <div id="content-small" style="margin-top: 2px; margin-left: 0px">
                        <asp:DataList ID="lstProduct" DataKeyField="ID" runat="server" RepeatColumns="1"
                            Width="500px" CellSpacing="8" CellPadding="8">
                            <ItemTemplate>
                                <table border="0" style="margin-top: 8px;">
                                    <tr>
                                        <td style="width: 213px">
                                            <div class="ct-image" style="margin-left: 0">
                                                <a href="Services.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                                                    <asp:Image ID="imgImage" Height="243px" Width="213px" runat="server" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.ImageLink") %>'>
                                                    </asp:Image>
                                                </a>
                                            </div>
                                        </td>
                                        <td valign="top">
                                            <div class="ct-text" style="height: 243px">
                                                <a href="Services.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>" style="font-size: medium; font-weight:bold;
                                                    color: White">
                                                    <%# DataBinder.Eval(Container, "DataItem.ServiceName")%>
                                                     </a>
                                                <br />
                                                <label class="style-ct-text" runat="server" id="lblShortContent" style="font-weight: bold">
                                                    Price:
                                                    <%# DataBinder.Eval(Container, "DataItem.ServicePrice")%>
                                                </label>
                                                <br />
                                                <label class="style-ct-text">
                                                    <%# DataBinder.Eval(Container, "DataItem.ShortContent")%></label>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                        <div style="margin-top: 2px; margin-left: 0px">
                            <asp:Panel runat="server" ID="pnlAccessoriesDetail" Visible="false">
                                <div class="ct-image" style="margin-left: 0">
                                    <asp:Image ID="imgImageDetail" Height="243px" Width="213px" runat="server"></asp:Image>
                                </div>
                                <div class="ct-text">
                                    <strong>
                                        <label runat="server" id="lblName" style="margin-left: 5; font-weight: bold; font-size: medium">
                                        </label>
                                    </strong>
                                    <br />
                                    <label class="style-ct-text" runat="server" id="lblShortContent" style="font-weight: bold">
                                    </label>
                                </div>
                                <div class="contentDetail">
                                    <label class="style-ct-text" runat="server" id="lblDetailContent">
                                    </label>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
