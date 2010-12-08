<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" ValidateRequest="false"
    CodeFile="EditAccessories.aspx.cs" Inherits="MobileTech.Admin.Accessories.EditAccessories" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlAdd" Width="100%" runat="server">
        <table width="100%" border="1">
            <tr>
                <td colspan="2">
                    <strong>Accessories Information </strong>
                </td>
            </tr>
             <tr>
                <td style="height: 51px; width: 110px">
                    Category: (*)&nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="300px" 
                        oninit="ddlCategory_Init">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                        ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 51px; width: 110px">
                    Accessories Name: (*)&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtAccessoriesName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                        ControlToValidate="txtAccessoriesName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Price: (*)&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                        ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Short Content: (*)&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtShortContent" runat="server" Width="300px" TextMode="MultiLine" Height="40px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        ControlToValidate="txtShortContent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Image:
                </td>
                <td>
                    <asp:FileUpload ID="fileImage" runat="server" Width="300px" />
                    (*.jpg, *.bmp, *.gif, *. png)
                </td>
            </tr>
            <tr>
                <td>
                    Detail Content:
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <FCKeditorV2:FCKeditor ID="fckDetail" runat="server" Height="350px" Width="850px"
                        BasePath="~/FCKeditor/">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="90px" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="90px" Visible="false"
                        OnClick="btnDelete_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" CausesValidation="False"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
