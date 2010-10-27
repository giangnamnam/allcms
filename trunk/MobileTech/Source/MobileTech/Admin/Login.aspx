<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MobileTech.Admin.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
    <table width="100%">
        
<tr>
    <td align="center">
        <asp:Login ID="ctlLogin" runat="server" onauthenticate="ctlLogin_Authenticate" 
            Orientation="Horizontal" UserName="admin">
        </asp:Login>
    </td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
