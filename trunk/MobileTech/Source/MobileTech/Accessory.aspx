<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true" Inherits="MobileTech.Accessory" Codebehind="Accessory.aspx.cs" %>

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
                    <div id="content-small" style="margin-left: -8px">
                        <asp:DataList ID="lstProduct" DataKeyField="ID" runat="server" RepeatColumns="3"
                            Width="500px" OnItemDataBound="lstProduct_ItemDataBound" CellSpacing="8" CellPadding="8">
                            <ItemTemplate>
                                <div align="center" style="margin-left: 8px; margin-top: 8px">
                                    <a href="Accessory.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                                        <asp:Image ID="imgImage" Height="243px" Width="213px" runat="server" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.ImageLink") %>'>
                                        </asp:Image>
                                    </a><a href="Accessory.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>" style="color: Green">
                                        <%# DataBinder.Eval(Container, "DataItem.AccessoriesName")%>
                                    </a>
                                    <br />
                                    <label style="color: Yellow">
                                        $<%# DataBinder.Eval(Container, "DataItem.AccessoriesPrice")%></label>
                                </div>
                            </ItemTemplate>
                            <ItemStyle Width="33%" VerticalAlign="Top" />
                        </asp:DataList>
                        <div style="margin-top: 2px; margin-left: 8px">
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
