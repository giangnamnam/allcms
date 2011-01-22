<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenu.ascx.cs" Inherits="MobileTech.UIControls.LeftMenu" %>
<div style=" width:100%; height:400px">

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
<strong style="color: White">Repair</strong>
<ul class="sub-nav-a">
            <li class="style-nav-a"><a href="RepairList.aspx">
                Repair List</a></li></ul>
</div>