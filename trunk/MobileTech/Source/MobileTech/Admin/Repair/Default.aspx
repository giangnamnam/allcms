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
                <td style="width:50px">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        onclick="btnSearch_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div id="main1" style="width: 100%">
        
        <asp:DataGrid ID="gridProduct" runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False"
            BorderColor="#3366CC" BorderWidth="1px" BackColor="White" CellPadding="4" OnEditCommand="gridProduct_EditCommand"
            OnPageIndexChanged="gridProduct_PageIndexChanged" OnItemDataBound="gridProduct_ItemDataBound"
            AllowCustomPaging="True" BorderStyle="None">
            <SelectedItemStyle ForeColor="#CCFF99" BackColor="#009999" Font-Bold="True"></SelectedItemStyle>
            <HeaderStyle Font-Bold="True" BackColor="#003399" ForeColor="#CCCCFF"></HeaderStyle>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>
            <ItemStyle BackColor="White" ForeColor="#003399" />
            <Columns>
                <asp:TemplateColumn HeaderText="M&#227;" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ID")%>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                
                <asp:BoundColumn DataField="RepairNo" HeaderText="Repair No"></asp:BoundColumn>
                <asp:BoundColumn DataField="CustomerName" HeaderText="Customer Name"></asp:BoundColumn>
                <asp:BoundColumn DataField="ProductModel" HeaderText="Model"></asp:BoundColumn>
                <asp:BoundColumn DataField="StatusToString" HeaderText="Status"></asp:BoundColumn>
                <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel"
                    ItemStyle-Width="70px" EditText="Edit">
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:EditCommandColumn>
            </Columns>
            <PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages">
            </PagerStyle>
        </asp:DataGrid>
    </div>
</asp:Content>
