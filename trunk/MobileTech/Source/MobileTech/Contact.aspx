<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    Inherits="MobileTech._Contact" CodeBehind="Contact.aspx.cs" %>

<%@ Register Src="UIControls/LeftMenu.ascx" TagName="LeftMenu" TagPrefix="uc1" %>
<%@ Register Src="UIControls/SiteMap.ascx" TagName="SiteMap" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table id="container" style="vertical-align: middle">
        <tr>
            <td id="sub-nav">
                <uc1:LeftMenu ID="LeftMenu1" runat="server" />
            </td>
            <td>
                <div id="main-content">
                    <div class="title" style="vertical-align: bottom; color: Red">
                        <uc2:SiteMap ID="SiteMap1" runat="server" />
                    </div>
                    <div class="title" style="margin-top: 4px; vertical-align: middle">
                        <h2>
                            <p style="color: White; font-size: medium; vertical-align: middle">
                                Contact Us</p>
                        </h2>
                    </div>
                    <div id="content-small">
                        <div class="content-news">
                            <table border="0" cellpadding="10" cellspacing="10" width="100%" style="height: 220px">
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMsg" runat="server" Visible="False" ForeColor="Red" Font-Size="12px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 80px; color: White">
                                        Full Name: <span style="color: Red">*</span>
                                    </td>
                                    <td>
                                        <input id="txtFullName" type="text" name="name" size="50" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFullName"
                                            Display="Dynamic" ErrorMessage="Enter name!"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White">
                                        Address:
                                    </td>
                                    <td>
                                        <input id="txtAddress" type="text" name="address" size="50" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White">
                                        Phone:
                                    </td>
                                    <td>
                                        <input id="txtPhone" type="text" name="phone" size="50" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White">
                                        Email: <span style="color: Red">*</span>
                                    </td>
                                    <td>
                                        <input id="txtEmailFrom" type="text" name="email" size="50" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailFrom"
                                            Display="Dynamic" ErrorMessage="Enter email address!"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailFrom"
                                            Display="Dynamic" ErrorMessage="Incorrect email format!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White; vertical-align: middle">
                                        Content:
                                    </td>
                                    <td>
                                        <textarea id="txtContent" rows="6" name="content" cols="70" runat="server"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnSendMail" runat="server" OnClick="btnSend_Click" Text="Send Mail" />
                                    </td>
                                </tr>
                            </table>
                            <%--<h2>
                                <p style='color: Red'>
                                    Campus maps</p>
                            </h2>--%>
                            <asp:GridView ID="GridViewContact" runat="server" AutoGenerateColumns="False" CellPadding="3"
                                GridLines="Vertical" ShowHeader="False" BorderStyle="None" BorderWidth="1px"
                                Width="100%">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table width="100%" align="center">
                                                <tr>
                                                    <td id="contactMapLink">
                                                        <br />
                                                        <p>
                                                            <strong style="font-size: 14px; font-weight: bold; color: #ff3300">
                                                                <%#Eval("ContactName")%></strong>
                                                            <br>
                                                            <%#Eval("ContactAddress")%><br>
                                                            <%#Eval("ContactPhone1")%><br>
                                                            <a href="javascript: void(0)" onclick="window.open('<%#Eval("ContactGoogleAddress")%>', 'windowname1'); return false;">
                                                                View map</a>
                                                            <br />
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>

    <script type="text/javascript">
    function OpenWeb(url) {
        window.open(url, "Google map", "status=1,width=425,height=350"); 
    }
    </script>

</asp:Content>
