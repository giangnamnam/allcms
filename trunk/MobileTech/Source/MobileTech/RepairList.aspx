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
                            <table>
                                <tr>
                                    <td style="width: 200px">
                                    </td>
                                    <td style="width: 80px">
                                        Repair No.
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtRepairNo" runat="server"></asp:TextBox>
                                    </td>
                                    
                                    <td style="width: 50px">
                                        <asp:Button ID="btnSearch" runat="server" Text="Track" 
                                            onclick="btnSearch_Click"/>
                                    </td>
                                </tr>
                            </table>
                            <asp:GridView ID="grvProductList" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" Width="100%" GridLines="Vertical" 
                                onrowcreated="grvProductList_RowCreated">
                                <RowStyle ForeColor="Black" BackColor="#EEEEEE" />
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
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
