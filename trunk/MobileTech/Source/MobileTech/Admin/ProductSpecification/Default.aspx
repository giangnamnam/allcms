<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" Inherits="MobileTech.Admin.ProductSpecification.Default" Codebehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="grvProductList" runat="server" AllowPaging="True" AllowSorting="True" Width="100%"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
        DataSourceID="ObjectDataSourceProductSpecification" DataKeyNames="ID" BorderWidth="1px" CellPadding="4"
        OnRowDeleted="grvProductList_RowDeleted">
        <RowStyle ForeColor="#003399" BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="false">
            </asp:BoundField>
            <asp:BoundField DataField="SpecificationName" HeaderText="Name" SortExpression="SpecificationName">
                <ItemStyle Width="300px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="SpecificationDescription" HeaderText="Description" SortExpression="SpecificationDescription">
                <ItemStyle Width="400px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CommandField ShowCancelButton="False" ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSourceProductSpecification" runat="server" DeleteMethod="DeleteProductSpecification"
        SelectMethod="GetProductSpecification" TypeName="MobileTech.ProductService" UpdateMethod="UpdateProductSpecification"
        OldValuesParameterFormatString="{0}" InsertMethod="InsertProductSpecification">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="SpecificationName" Type="String" />
            <asp:Parameter Name="SpecificationDescription" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <%--<asp:Parameter Name="sortData" Type="String" />--%>
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="SpecificationName" Type="String" />
            <asp:Parameter Name="SpecificationDescription" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <hr />
    <table width="100%">
        <tr>
            <td style="width:150px">
                ProductSpecification Name
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="200"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtName" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td>
                Description
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" Width="200"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add ProductSpecification" 
                    onclick="btnAdd_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
