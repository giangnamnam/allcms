<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true" Inherits="MobileTech._Contact" Codebehind="Contact.aspx.cs" %>
<%@ Register src="UIControls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
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
                        Home > Contact
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
                                                            <a href="http://www.google.com">PDF map</a> | <a href="http://www.google.com">Interactive
                                                                map</a><br />
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
</asp:Content>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MobileTech._Contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="reset.css" rel="stylesheet" type="text/css" />
    <link href="menu.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="warpper">
        <div id="content-header">
            <div id="header">
                <div id="logo">
                    <img height="140px" src="Images/lg.png" />
                </div>
                <div id="hd-right">
                    <div id="hd-flash">
                        <img src="Images/title.png" /></div>
                    <div class="topMenu">
							<ul>
								<li><a class="home" href="Default.aspx">Home</a></li>
								<li><a class="about" href="About.aspx">About</a></li>
								<li><a class="services" href="Services.aspx">Services</a></li>
								<li><a class="accessories" href="Accessories.aspx">Accessories</a></li>
								<li><a class="plans" href="Plans.aspx">Plans</a></li>
								<li><a class="contact" href="Contact.aspx">Contact</a></li>
							</ul>
						</div>
                    
                </div>
            </div>
        </div>
        <div id="container-content">
            
        </div>
        <div id="spacer" style="height: 60px;">
        </div>
        <div id="footer">
            <div id="submenu">
                <%--<ul class="style-submenu">
                    <a href="Default.aspx">home</a></ul>
                <ul class="style-submenu">
                    <a href="About.aspx">about</a></ul>
                <ul class="style-submenu" style="width: 70px">
                    <a href="Services.aspx">services</a></ul>
                <ul class="style-submenu" style="width: 100px">
                    <a href="Accessories.aspx">accessories</a></ul>
                <ul class="style-submenu">
                    <a href="Plans.aspx">plans</a></ul>
                <ul class="style-submenu">
                    <a href="Contact.aspx">contact</a></ul>
               
            </div>
        </div>
    </div>
    </form>
</body>
</html>
--%>