<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" ValidateRequest="false"
    AutoEventWireup="true" Inherits="MobileTech.Admin.Contact.Default" CodeBehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="grvProductList" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"
        DataSourceID="ObjectDataSourceContact" DataKeyNames="ID" Width="100%" BorderWidth="1px"
        CellPadding="4">
        <RowStyle ForeColor="#003399" BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="false"></asp:BoundField>
            <asp:BoundField DataField="ContactName" HeaderText="Name" SortExpression="ContactName">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactAddress" HeaderText="Address" SortExpression="ContactAddress">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactGoogleAddress" HeaderText="Google Address" SortExpression="ContactGoogleAddress">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactPhone1" HeaderText="Phone (T)" SortExpression="ContactPhone1">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="ContactPhone2" HeaderText="Phone (F)" SortExpression="ContactPhone2">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="ContactMobilePhone" HeaderText="Phone (M)" SortExpression="ContactMobilePhone">
                <ItemStyle Width="200px" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactEmail" HeaderText="Email" SortExpression="ContactEmail">
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
    <asp:ObjectDataSource ID="ObjectDataSourceContact" runat="server" DeleteMethod="DeleteContact"
        SelectMethod="GetContact" TypeName="MobileTech.ProductService" UpdateMethod="UpdateContact"
        OldValuesParameterFormatString="{0}" InsertMethod="InsertContact">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="ContactAddress" Type="String" />
            <asp:Parameter Name="ContactGoogleAddress" Type="String" />
            <asp:Parameter Name="ContactPhone1" Type="String" />
            <asp:Parameter Name="ContactPhone2" Type="String" />
            <asp:Parameter Name="ContactMobilePhone" Type="String" />
            <asp:Parameter Name="ContactEmail" Type="String" />
        </UpdateParameters>
        <SelectParameters>
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="ContactAddress" Type="String" />
            <asp:Parameter Name="ContactGoogleAddress" Type="String" />
            <asp:Parameter Name="ContactPhone1" Type="String" />
            <asp:Parameter Name="ContactPhone2" Type="String" />
            <asp:Parameter Name="ContactMobilePhone" Type="String" />
            <asp:Parameter Name="ContactEmail" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <hr />
    <table width="100%">
        <tr>
            <td style="width: 150px">
                Name
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="200"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtName" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td>
                Address
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="300" TextMode="MultiLine" Height="50px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Google Address
            </td>
            <td>
                <asp:TextBox ID="txtGoogleAddress" runat="server" Width="300" TextMode="MultiLine"
                    Height="50px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phone 1 (T)
            </td>
            <td>
                <asp:TextBox ID="txtPhone1" runat="server" Width="200"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phone 2 (F)
            </td>
            <td>
                <asp:TextBox ID="txtPhone2" runat="server" Width="200"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mobile Phone (M)
            </td>
            <td>
                <asp:TextBox ID="txtMobilePhone" runat="server" Width="200"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="200"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="*" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add Contact" OnClick="btnAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
