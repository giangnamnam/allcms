<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true"
    Inherits="MobileTech.Admin.Repair.Default" CodeBehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div id="sidebar">
        <ul class="sideNav">
            <li><a id="A1" href="Default.aspx" class="active" runat="server">Search Repair</a></li>
            <li><a id="A2" href="InputView.aspx" runat="server">Input View</a></li>
        </ul>
    </div>
    <br />--%>
    <div>
        <table>
            <tr>
                <td style="width: 80px">
                    Name
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td style="width: 20px">
                </td>
                <td style="width: 80px">
                    Repair No.
                </td>
                
                <td>
                    <asp:TextBox ID="txtRepairNo" runat="server"></asp:TextBox>
                </td>
               <td style="width: 20px">
                </td>
                <td style="width: 50px">
                    Status
                </td>
                <td>
                    <asp:DropDownList ID="ddlStatus" runat="server" OnInit="ddlStatus_Init" Width="200px" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td style="width: 50px">
                    
                </td>
            </tr>
            <tr>
                 <td style="width: 80px">
                    From Date
                </td>
                <td>
                    <iframe width="168" height="190" name="gToday:normal:agenda.js" id="gToday:normal:agenda.js"
                        src="../../Calendar/ipopeng.htm" scrolling="no" frameborder="0" style="border: 2px ridge;
                        visibility: visible; z-index: 999; position: absolute; left: -500px; top: 0px;">
                    </iframe>
                    <input runat="server" name="txtFromDate" id="txtFromDate" style="width: 112;"
                        readonly="readonly" />&nbsp;
                    <img name="popcal" style="cursor: 'hand';" onclick="gfPop.fPopCalendar(document.aspnetForm.ctl00_ContentPlaceHolder1_txtFromDate);return false;"
                        align="top" src="../../Calendar/calbtn.gif" width="34" height="22" border="0"
                        alt="" />
                </td>
                <td style="width: 20px">
                </td>
                <td style="width: 80px">
                    To Date
                </td>
                <td>
                    <input runat="server" name="txtToDate" id="txtToDate" style="width: 112;"
                        readonly="readonly" />&nbsp;
                    <img name="popcal" style="cursor: 'hand';" onclick="gfPop.fPopCalendar(document.aspnetForm.ctl00_ContentPlaceHolder1_txtToDate);return false;"
                        align="top" src="../../Calendar/calbtn.gif" width="34" height="22" border="0"
                        alt="" />
                </td>
                <td style="width: 20px">
                </td>
                <td style="width: 50px">
                    Shop
                </td>
                <td>
                    <asp:DropDownList ID="ddlShop" runat="server"  Width="200px" 
                        oninit="ddlShop_Init">
                    </asp:DropDownList>
                </td>
                 <td style="width: 50px">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div id="main1" style="width: 100%">
        <asp:DataGrid ID="gridProduct" runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False"
            BorderColor="#3366CC" BorderWidth="1px" BackColor="White" CellPadding="4" OnEditCommand="gridProduct_EditCommand"
            OnPageIndexChanged="gridProduct_PageIndexChanged" OnItemDataBound="gridProduct_ItemDataBound"
            AllowCustomPaging="True" BorderStyle="None" OnItemCreated="gridProduct_ItemCreated"
            OnSelectedIndexChanged="gridProduct_SelectedIndexChanged">
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
                <asp:BoundColumn DataField="CustomerDate" HeaderText="Date" DataFormatString="{0:dd-MM-yyyy}"></asp:BoundColumn>
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

    <script type="text/javascript">
        //Auto Enter = Tab key
        function AutoTab() {
            if (event.keyCode == 13) {
                event.cancel = true;
                event.keyCode = 9;
            }
        }
        //Get current Date - Now()
        function GetDate() {
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0! 
            var yyyy = today.getFullYear();
            if (dd < 10) { dd = '0' + dd }
            if (mm < 10) { mm = '0' + mm }
            return dd + '-' + mm + '-' + yyyy;
        }

        var fromDate = document.aspnetForm.ctl00_ContentPlaceHolder1_txtFromDate;
        if (fromDate.value == null) {
            fromDate.value = GetDate();
        }
        var toDate = document.aspnetForm.ctl00_ContentPlaceHolder1_txtToDate;
        if (toDate.value == null) {
            toDate.value = GetDate();
        }
        //For Calendar
        document.onmousedown = function(e) {
            var n = !e ? self.event.srcElement.name : e.target.name;
            if (document.layers) {
                with (gfPop) var l = pageX, t = pageY, r = l + clip.width, b = t + clip.height;
                if (n != "popcal" && (e.pageX > r || e.pageX < l || e.pageY > b || e.pageY < t)) gfPop.fHideCal();
                return routeEvent(e);
            } else if (n != "popcal") gfPop.fHideCal();
        }
        if (document.layers) document.captureEvents(Event.MOUSEDOWN);
    </script>

</asp:Content>
