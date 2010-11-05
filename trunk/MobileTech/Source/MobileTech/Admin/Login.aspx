﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MobileTech.Admin.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login To Mobile Tech</title>
    <link href="Styles/css/transdmin.css" rel="Stylesheet" type="text/css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="wrapper">
            <ul id="mainNav">
            </ul>
            <div align="center">
                <asp:Login ID="ctlLogin" runat="server" OnAuthenticate="ctlLogin_Authenticate" Orientation="Horizontal"
                     TitleTextStyle-Font-Bold="true" UserNameLabelText="Username:"
                    UserName="admin">
                </asp:Login>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
