<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="MobileTech.Admin.PasswordRecovery" %>

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
                
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F7DE" 
                    BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Names="Verdana" Font-Size="10pt">
                    <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                </asp:PasswordRecovery>
                
            </div>
        </div>
    </div>
    </form>
</body>
</html>
