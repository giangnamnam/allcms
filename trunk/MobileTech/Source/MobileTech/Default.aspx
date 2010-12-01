<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MobileTech._Default" %>

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
            <div id="container">
                <table>
                    <tr>
                        <td id="image">
                            <img src="Images/h1.png" />
                        </td>
                        <td class="img-content" style="vertical-align: top">
                            <ul class="style-image-content">
                                We are 100% independently owned company in Western Australia. We have an passionated
                                expert team that promise to provide you an outstanding job. Explore our website
                                to find out how we can assist you.</ul>
                            <div class="re-more" style="height: 20px;">
                                <a href="#">Read more</a></div>
                        </td>
                    </tr>
                </table>
                <div id="image-product" style="margin-top: 10px;">
                    <span class="product" style="margin: 0">
                        <img src="Images/h2.png" /></span> <span class="product">
                            <img src="Images/h3.png" /></span> <span class="product">
                                <img src="Images/h4.png" /></span> <span class="product">
                                    <img src="Images/h5.png" /></span>
                </div>
                <div class="clear">
                </div>
                <div id="counter" style="height: 50px">
                    <div class="counter-a">
                        visitor</div>
                    <div class="counter-a">
                        Follow us on</div>
                    <div class="counter-a">
                        <a href="http://www.facebook.com/">
                            <img src="Images/facebook.png" style="margin-top: 15px;" /></a></div>
                </div>
                <div id="partner-table" style="height: 60px;" class="clearfix">
                    <img src="Images/logo.png" /></div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
</asp:Content> 