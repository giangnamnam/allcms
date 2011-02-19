<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewForm.aspx.cs" Inherits="MobileTech.Admin.Repair.ViewForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Form</title>
    <link href="../Styles/css/transdmin.css" rel="Stylesheet" type="text/css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <div id="wrapper">
            <asp:Panel ID="pnlAdd" Width="100%" runat="server">
                <table width="1024px" border="0">
                    <tr>
                        <td colspan="2">
                            <table width="100%" border="0">
                                <tr>
                                    <td style="width: 104px; height: 170px">
                                        <img src="../../../../Images/Repair/RepairLogo.jpg" alt="Repair Logo"/>
                                    </td>
                                    <td align="center">
                                        <span style="font-weight: bold; font-size: 52px">Mobile Tech</span>
                                        <hr />
                                        <span style="font-weight: bold; font-size: 24px">PLANs, CONNECTION & REPAIRS</span>
                                    </td>
                                    <td style="width: 25%">
                                        <span style="font-weight: bold; font-size: 24px">No:</span>
                                        <asp:Label ID="lblRepairNo" runat="server" Font-Size="24" ForeColor="Red"></asp:Label>
                                        <br />
                                        <br />
                                        <span style="font-size: 16px">Rockingham<br />
                                            Service Agreement<br />
                                        </span>T: <span style="font-weight: bold; font-size: 18px">9528 2888</span><br />
                                        F: 9528 3888<br />
                                        M: 0409 888 827<br />
                                        E: mobiletech6@bigpond.com<br />
                                        A: Rockingham Shopping Centre K036, 1 Council Ave
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <table width="100%" border="0">
                                <tr>
                                    <td style="width:50%">
                                    </td>
                                    <td>
                                        Staff Name: <asp:Label ID="lblStaffName" runat="server" Font-Bold="true" Width="400"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: Silver; height: 20px;">
                            <strong style="color: White">Customer Information </strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table width="100%" border="1">
                                <tr>
                                    <td>
                                        Name:
                                        <asp:Label ID="lblCusName" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        Date:<asp:Label ID="lblCusDate" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Contact:<asp:Label ID="lblCusContact" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 10px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: Silver; height: 20px;">
                            <strong style="color: White">Product Information </strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table width="100%" border="1">
                                <tr>
                                    <td>
                                        Model:<asp:Label ID="lblProductModel" runat="server" Font-Bold="true" Width="150px"></asp:Label>
                                        
                                        Colour:
                                        <asp:Label ID="lblProductColour" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        IMEI:
                                        <asp:Label ID="lblProductIMEI" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" valign="top">
                                        Fault Report:
                                        <asp:Label ID="lblProductFaultReport" runat="server" Font-Bold="true" Height="50"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" border="1">
                                            <tr>
                                                <td align="center">
                                                    No Sim
                                                    <br />
                                                    <asp:CheckBox ID="chkNoSim" runat="server" Font-Bold="true"/>
                                                </td>
                                                <td align="center">
                                                    WB
                                                    <br />
                                                    <asp:Label ID="lblWB" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                                <td align="center">
                                                    NB
                                                    <br />
                                                    <asp:Label ID="lblNB" runat="server" Font-Bold="true"></asp:Label>
                                                </td>
                                                <td align="center">
                                                    Memory Card
                                                    <br />
                                                    <asp:Label ID="lblMemoryCardY" runat="server" Text="Y"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="lblMemoryCardN" runat="server" Text="N"></asp:Label>
                                                    
                                                </td>
                                                <td align="center" style="width: 50%">
                                                    Exterior Condition: (New > Total Damaged)
                                                    <br />
                                                    <label id="lblExteriorCondition" runat="server"></label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 10px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: Silver; height: 20px;">
                            <strong style="color: White">Memo</strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table width="100%" border="1">
                                <tr>
                                    <td style="width:50%">
                                        Labour Cost:
                                    </td>
                                    <td style="width:50%">
                                        $<asp:Label ID="lblLabourCost" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Parts Code:
                                    </td>
                                    <td>
                                        $<asp:Label ID="lblPartsCode" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Total including GST (Go ahead & Confirmed)
                                    </td>
                                    <td>
                                        $<asp:Label ID="lblTotalIncludingGST" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 10px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: Silver; height: 20px;">
                            <strong style="color: White">Parts Fixed</strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:CheckBoxList ID="chkPartsFixed" runat="server" RepeatColumns="7" RepeatDirection="Horizontal">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:10px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color:Silver; height:20px;">
                            <strong style="color:White">Terms & Conditions</strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                             <ol>
                                 <li>
                                    1. All phones carry an inspection fee of $20 non-refundable at the time of book-in. 3 months warranty provided for the repaired parts only; but not
                                    including physical or liquid damage. We accept no responsibility for any other existing problems.
                                    
                                        </li>
                                        <li>2. All information in the phone will be lost due </li>
                                    </ol>
                         </td>
                     </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>
