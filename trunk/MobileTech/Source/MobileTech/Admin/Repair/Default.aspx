<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true"
    Inherits="MobileTech.Admin.Repair.Default" CodeBehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a id="A1" href="Default.aspx" class="active" runat="server">Search Repair</a></li>
            <li><a id="A2" href="InputView.aspx" runat="server">Input View</a></li>
        </ul>
    </div>
    <br />
    <div>
        <table>
            <tr>
                <td style="width:100px">
                    
                </td>
                <td style="width:50px">
                    Name
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                 <td style="width:50px">
                    
                </td>
                <td style="width:80px">
                    Repair No.
                </td>
                <td>
                    <asp:TextBox ID="txtRepairNo" runat="server"></asp:TextBox>
                </td>
                               
                <td style="width:50px">
                    
                </td>
                <td style="width:50px">
                    Status
                </td>
                <td>
                    <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="True" 
                        oninit="ddlStatus_Init" onselectedindexchanged="ddlStatus_SelectedIndexChanged" 
                       >
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div id="main" style="width: 100%">
        <asp:GridView ID="grvProductList" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
            BorderWidth="1px" CellPadding="4" Width="100%">
            <RowStyle ForeColor="#003399" BackColor="White" />
            <Columns>
                
                <asp:BoundField DataField="RepairNo" HeaderText="RepairNo"></asp:BoundField>
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName"></asp:BoundField>
                <asp:BoundField DataField="Model" HeaderText="Model">
                    <ItemStyle Width="100px" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="StatusToString" HeaderText="Status">
                    <ItemStyle Width="100px" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField ShowCancelButton="False" ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
    </div>
</asp:Content>
