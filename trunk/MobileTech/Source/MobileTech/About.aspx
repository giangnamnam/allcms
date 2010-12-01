<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MobileTech.About" %>

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
                    <img height="140px" src="image/lg.png" />
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
                    <%--<div id="nav">
                        <span class="nav-a" style="margin-left: 25px; border-bottom: 4px solid #ff0000;"><a
                            href=Default.aspx>home</a></span> <span class="nav-a" style="border-bottom: 4px solid #ffff05;">
                                <a href=About.aspx>about</a></span> <span class="nav-a" style="border-bottom: 4px solid #00aeff">
                                    <a href=Services.aspx>services</a></span> <span class="nav-a" style="border-bottom: 4px solid #55e546;
                                        width: 120px"><a href=Accessories.aspx>accessories</a></span> <span class="nav-a" style="border-bottom: 4px solid #ff00c2">
                                            <a href=Plans.aspx>plans</a></span> <span class="nav-a" style="border-bottom: 4px solid #ff5a00">
                                                <a href=Contact.aspx>contact</a></span></p>
                    </div>--%>
                </div>
            </div>
        </div>
        <div id="container-content">
            <table id="container" style="vertical-align: middle">
                <tr>
                    <td id="sub-nav">
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link1</a></li></ul>
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link2</a></li></ul>
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link3</a></li></ul>
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link4</a></li></ul>
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link5</a></li></ul>
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link6</a></li></ul>
                        <ul class="sub-nav-a">
                            <li class="style-nav-a"><a href="#">link7</a></li></ul>
                    </td>
                    <td>
                        <div id="main-content"> 
                            <div class="title" style="vertical-align:bottom; color:Red">
                               
                                Home > About
                            </div>
                            <div class="title" style="margin-top: 4px; vertical-align:middle">
                                
                                <h2><p style="color:White; font-size:medium; vertical-align:middle"">About Us</p></h2>
                             </div>
                            <div id="content-small">
                                <div class="content-news">
                                    <label runat="server" id="lblAbout"></label>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="spacer" style="height: 60px;">
        </div>
        <div id="footer">
            <div id="submenu">
                <ul class="style-submenu">
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
                <%--<br />
                <ul class="style-submenu">
                    <a href="#">Design By 2010</a></ul>--%>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
