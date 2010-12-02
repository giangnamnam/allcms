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
                    <div class="title">
                    </div>
                    <div class="title" style="margin-top: 2px;">
                    </div>
                    <div id="content-small" style="margin-top: 2px;">
                        
                        <asp:DataList ID="lstProduct" DataKeyField="ID" runat="server" RepeatColumns="3" GridLines="Both" BorderWidth="8" BorderColor="Transparent"
                            Width="500px" OnItemDataBound="lstProduct_ItemDataBound">
                            <ItemTemplate>
                                <div align="center">
                                    <asp:Image ID="imgImage" Height="243px" Width="213px" runat="server" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.ImageLink") %>'>
                                    </asp:Image>
                                    <a href="Accessory.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                                        <%# DataBinder.Eval(Container, "DataItem.AccessoriesName")%></a>
                                </div>
                            </ItemTemplate>
                            <ItemStyle Width="33%" VerticalAlign="Top" />
                        </asp:DataList>
                        <%--<div class="ct-image" style="margin-left: 0">
                                <img src="Images/hh.png" /></div>
                            <div class="ct-image">
                                <img src="Images/img5.png" /></div>
                            <div class="ct-image">
                                <img src="Images/img6.png" /></div>--%>
                        
                        <asp:Panel runat="server" ID="pnlAccessoriesDetail" Visible="false">
                            <div class="ct-image" style="margin-left: 0">
                                <img src="Images/hh.png" /></div>
                            <div class="ct-text">
                                <ul class="style-ct-text">
                                    Tran Thanh Tu<br />
                                    Tran Thanh Tu</ul>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
