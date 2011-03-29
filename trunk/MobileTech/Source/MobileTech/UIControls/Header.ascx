<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="MobileTech.UIControls.Header" %>
<div id="content-header">
    <div id="header">
        <div id="logo">
            <a href="../Default.aspx">
                <img height="140px" border="0" src="Images/lg.png" /></a>
        </div>
        <div id="hd-right">
            <div id="hd-flash">
                <img src="Images/title.png" /></div>
            <div id="nav">
                <span id="home" class="nav-a" style="margin-left: 25px; border-bottom: 4px solid #ff0000;">
                    <a href="Default.aspx">home</a></span> <span id="about" class="nav-a" style="border-bottom: 4px solid #ffff05;">
                        <a href="About.aspx">about</a></span> <span id="services" class="nav-a" style="border-bottom: 4px solid #00aeff">
                            <a href="Services.aspx">services</a></span> <span id="accessories" class="nav-a"
                                style="border-bottom: 4px solid #55e546; width: 120px"><a href="Accessory.aspx">accessories</a></span>
                <span id="plans" class="nav-a" style="border-bottom: 4px solid #ff00c2"><a href=""
                    onclick="javascript: alert('Under construction!'); return false;">plans</a></span>
                <span id="contact" class="nav-a" style="border-bottom: 4px solid #ff5a00"><a href="Contact.aspx">
                    contact</a></span>
            </div>
        </div>
    </div>
</div>
