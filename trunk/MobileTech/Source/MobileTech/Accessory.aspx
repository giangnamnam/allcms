<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    CodeFile="Accessory.aspx.cs" Inherits="MobileTech.Accessory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table id="container" style="vertical-align: middle">
        <tr>
            <td id="sub-nav">
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link1</a></li></ul>
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link2</a></li></ul>
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link3</a></li></ul>
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link4</a></li></ul>
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link5</a></li></ul>
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link6</a></li></ul>
                <ul class="sub-nav-a">
                    <li class="style-nav-a"><a href="#">link7</a></li></ul>
            </td>
            <td>
                <div id="main-content">
                    <div class="title" style="vertical-align: bottom; color: Red">
                        Home > Accessories
                    </div>
                    <div id="content-small" style="margin-top: 2px; margin-left: -8px">
                        <asp:DataList ID="lstProduct" DataKeyField="ID" runat="server" RepeatColumns="3"
                            Width="500px" OnItemDataBound="lstProduct_ItemDataBound" CellSpacing="8">
                            <ItemTemplate>
                                <div align="center" style="margin-left: 8px">
                                    <a href="Accessory.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                                        <asp:Image ID="imgImage" Height="243px" Width="213px" runat="server" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.ImageLink") %>'>
                                        </asp:Image>
                                    </a><a href="Accessory.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>" style="color: Green">
                                        <%# DataBinder.Eval(Container, "DataItem.AccessoriesName")%>
                                    </a>
                                    <label style="color: White">
                                        |
                                    </label>
                                    <label style="color: Yellow">
                                        <%# DataBinder.Eval(Container, "DataItem.AccessoriesPrice")%></label>
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
