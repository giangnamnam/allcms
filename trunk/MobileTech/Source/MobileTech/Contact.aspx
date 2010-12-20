<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true" Inherits="MobileTech._Contact" Codebehind="Contact.aspx.cs" %>
<%@ Register src="UIControls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UIControls/SiteMap.ascx" tagname="SiteMap" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="vertical-align: middle; height:auto" >
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
                                    <td style="width: 80px; color: White">
                                        Full Name:
                                    </td>
                                    <td>
                                        <input id="Text1" type="text" name="name" size="50" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White">
                                        Address:
                                    </td>
                                    <td>
                                        <input id="Text2" type="text" name="address" size="50" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White">
                                        Phone:
                                    </td>
                                    <td>
                                        <input id="Text3" type="text" name="phone" size="50" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White">
                                        Email:
                                    </td>
                                    <td>
                                        <input id="Text4" type="text" name="email" size="50" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: White; vertical-align: middle">
                                        Content:
                                    </td>
                                    <td>
                                        <textarea id="Textarea2" rows="6" name="content" cols="70" runat="server"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <input id="Submit1" type="submit" value="Send Mail" />
                                    </td>
                                </tr>
                            </table>
                            <h2>
                                <p style='color: Red'>
                                    Campus maps</p>
                            </h2>
                            <asp:GridView ID="GridViewContact" runat="server" AutoGenerateColumns="False" CellPadding="3"
                                GridLines="Vertical" ShowHeader="False" BorderStyle="None" BorderWidth="1px"
                                Width="100%">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table width="100%" align="center">
                                                <tr>
                                                    <td>
                                                        <p>
                                                            <strong>
                                                                <%#Eval("ContactName")%></strong>
                                                            <br>
                                                            <%#Eval("ContactAddress")%><br>
                                                            <%#Eval("ContactPhone")%><br>
                                                            <a href="javascript: void(0)" onclick="window.open('<%#Eval("ContactGoogleAddress")%>', 'windowname1', 'width=425, height=350'); return false;">View map</a> <br />
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


