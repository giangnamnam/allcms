<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="MobileTech.Admin.Product.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="grvProductList" runat="server" AllowPaging="True"
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <RowStyle ForeColor="#003399" BackColor="White" />
        <Columns>
            <asp:ImageField DataImageUrlField="ProductImage" >
                <ItemStyle Width="100px" Height="100px" />
                <ControlStyle Width="100px" Height="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name">
                <ItemStyle Width="200px" VerticalAlign="Middle"/>
            </asp:BoundField>
            <asp:BoundField DataField="ProductPrice" HeaderText="Price">
                <ItemStyle Width="100px" VerticalAlign="Middle"/>
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