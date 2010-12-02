<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="MobileTech.Admin.Accessories.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="right">
        <asp:Button ID="btnAdd" runat="server" Text="Add" Width="90px" 
            CausesValidation="False" onclick="btnAdd_Click"/>
    </div>
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
            <asp:TemplateColumn HeaderText="Image" ItemStyle-Width="120px">
                <ItemTemplate>
                    <asp:Image ID="imgImage" Height="100px" Width="120px" runat="server" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.ImageLink") %>'>
                    </asp:Image>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:BoundColumn DataField="AccessoriesName" HeaderText="Accessories Name"></asp:BoundColumn>
            <asp:BoundColumn DataField="ShortContent" HeaderText="Short Content"></asp:BoundColumn>
            <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel"
                ItemStyle-Width="70px" EditText="Edit">
                <ItemStyle Width="70px"></ItemStyle>
            </asp:EditCommandColumn>
        </Columns>
        <PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages">
        </PagerStyle>
    </asp:DataGrid>
    
</asp:Content>
