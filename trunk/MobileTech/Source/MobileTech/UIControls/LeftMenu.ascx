<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenu.ascx.cs" Inherits="MobileTech.UIControls.LeftMenu" %>
<div style="width: 100%; height: 400px">
    <strong style="color: White">Tracking your items</strong>
    <ul class="sub-nav-a">
        <asp:Panel ID="Panel1" runat="server" DefaultButton="btnTrackItem">
            <div id="RepairTracking1" style="vertical-align: middle; text-align: left; float: right;
                margin-right: 5px; margin-top:7px">
                <asp:TextBox ID="txtRepairNo" runat="server" Width="120px"></asp:TextBox>
                &nbsp;
                <asp:LinkButton ID="btnTrackItem" CssClass="searchbutton" runat="server" OnClick="btnTrackItem_Click">Track</asp:LinkButton>
            </div>
        </asp:Panel>
    </ul>
    <%-- <ul class="sub-nav-a">
        <li class="style-nav-a"><a href="RepairList.aspx">Repair List</a></li>
    </ul>--%>
    <strong style="color: White">Accessories</strong>
    <asp:DataList ID="lstAccessories" DataKeyField="ID" runat="server" RepeatColumns="1"
        Width="205px">
        <ItemTemplate>
            <ul class="sub-nav-a">
                <li class="style-nav-a"><a href="Accessory.aspx?CategoryID=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                    <%# DataBinder.Eval(Container, "DataItem.CategoryAccName")%></a></li></ul>
        </ItemTemplate>
        <ItemStyle Width="33%" VerticalAlign="Top" />
    </asp:DataList>
    <strong style="color: White">Services</strong>
    <asp:DataList ID="lstService" DataKeyField="ID" runat="server" RepeatColumns="1"
        Width="205px">
        <ItemTemplate>
            <ul class="sub-nav-a">
                <li class="style-nav-a"><a href="Services.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                    <%# DataBinder.Eval(Container, "DataItem.ServiceName")%></a></li></ul>
        </ItemTemplate>
        <ItemStyle Width="33%" VerticalAlign="Top" />
    </asp:DataList>
</div>
