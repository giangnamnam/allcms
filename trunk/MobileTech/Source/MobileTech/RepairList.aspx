<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    Inherits="MobileTech.RepairList" CodeBehind="RepairList.aspx.cs" %>

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
                                Repair List</p>
                        </h2>
                    </div>
                    <div id="content-small">
                        <div class="content-news">
                            <asp:GridView ID="grvProductList" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="4" Width="100%">
                                <RowStyle ForeColor="#003399" BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="RepairNo" HeaderText="RepairNo"></asp:BoundField>
                                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName"></asp:BoundField>
                                    <asp:BoundField DataField="ProductModel" HeaderText="Model">
                                        <ItemStyle Width="100px" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="StatusToString" HeaderText="Status">
                                        <ItemStyle Width="100px" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
