<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="MobileTech.Admin.Contact.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="grvProductList" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
        BorderWidth="1px" CellPadding="4">
        <RowStyle ForeColor="#003399" BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ContactName" HeaderText="Product Name">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactAddress" HeaderText="Product Name">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="ContactGoogleAddress" HeaderText="Product Name">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="ContactAddress" HeaderText="Product Name">
                <ItemStyle Width="100px" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="ContactEmail" HeaderText="Product Name">
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
</asp:Content>
