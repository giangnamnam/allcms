<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewForm.aspx.cs" Inherits="MobileTech.Admin.Repair.ViewForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Form</title>
    <link href="../Styles/css/transdmin.css" rel="Stylesheet" type="text/css" media="all" />
    <!-- the button itself will not print  -->
    <style type="text/css">
        @media print
        {
            input.noPrint
            {
                display: none;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <div id="wrapper">
            <!-- Print Button  -->
            <input class="noPrint" style="color: Red" type="button" value="Print This Page" onclick="window.print()" />
            <asp:Panel ID="pnlAdd" Width="100%" runat="server">
                <div>
                    <table width="630px" border="0">
                        <tr>
                            <td colspan="2">
                                <table width="100%" border="0">
                                    <tr>
                                        <td style="width: 104px; height: 170px">
                                            <img src="../../../../Images/Repair/RepairLogo.jpg" alt="Repair Logo" />
                                        </td>
                                        <td align="center">
                                            <span style="font-weight: bold; font-size: 52px">Mobile Tech</span>
                                            <hr />
                                            <span style="font-weight: bold; font-size: 16px">PLANs, CONNECTION & REPAIRS</span>
                                        </td>
                                        <td style="width: 25%" align="left">
                                            <span style="font-weight: bold; font-size: 18px">No:</span>
                                            <asp:Label ID="lblRepairNo" runat="server" Font-Size="16" ForeColor="Red"></asp:Label>
                                            <br />
                                            <br />
                                            <span style="font-size: 16px">
                                                <label id="lblContactName" runat="server">
                                                </label>
                                                <br />
                                            </span>T: <span style="font-weight: bold; font-size: 14px">
                                                <label id="lblContactPhone1" runat="server">
                                                </label>
                                            </span>
                                            <br />
                                            F:
                                            <label id="lblContactPhone2" runat="server">
                                            </label>
                                            <br />
                                            M:
                                            <label id="lblContactMobilePhone" runat="server">
                                            </label>
                                            <br />
                                            E:
                                            <label id="lblContactEmail" runat="server">
                                            </label>
                                            <br />
                                            A:
                                            <label id="lblContactAddress" runat="server">
                                            </label>
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
                                        <td style="width: 50%">
                                        </td>
                                        <td>
                                            Staff Name:
                                            <asp:Label ID="lblStaffName" runat="server" Font-Bold="true" Width="200"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" style="background-color: Silver; height: 20px;">
                                <strong style="color: White">Customer Information</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                <table width="100%" border="1">
                                    <tr>
                                        <td style="width: 50%">
                                            Name:&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="lblCusName" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="width: 50%">
                                            Date:&nbsp;
                                            <asp:Label ID="lblCusDate" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Contact:
                                            <asp:Label ID="lblCusContact" runat="server" Font-Bold="true"></asp:Label>
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
                            <td colspan="2" align="left" style="background-color: Silver; height: 20px;">
                                <strong style="color: White">Product Information </strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                <table width="100%" border="1">
                                    <tr>
                                        <td>
                                            Model:&nbsp;
                                            <asp:Label ID="lblProductModel" runat="server" Font-Bold="true" Width="150px"></asp:Label>
                                            Colour:&nbsp;&nbsp;
                                            <asp:Label ID="lblProductColour" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td>
                                            IMEI:&nbsp;&nbsp;
                                            <asp:Label ID="lblProductIMEI" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" valign="top">
                                            Fault Report:
                                            <asp:Label ID="lblProductFaultReport" runat="server" Height="20"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <table width="100%" border="1">
                                                <tr>
                                                    <td align="center">
                                                        No Sim
                                                        <br />
                                                        <asp:CheckBox ID="chkNoSim" runat="server" Font-Bold="true" Enabled="false"/>
                                                    </td>
                                                    <td align="center">
                                                        WB
                                                        <br />
                                                        <asp:CheckBox ID="chkWB" runat="server" Font-Bold="true" Enabled="false"/>
                                                    </td>
                                                    <td align="center">
                                                        NB
                                                        <br />
                                                        <asp:CheckBox ID="chkNB" runat="server" Font-Bold="true" Enabled="false"/>
                                                    </td>
                                                    <td align="center">
                                                        Memory Card
                                                        <br />
                                                        <asp:Label ID="lblMemoryCardY" runat="server" Text="Y"></asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="lblMemoryCardN" runat="server" Text="N"></asp:Label>
                                                    </td>
                                                    <td align="center" style="width: 50%;">
                                                        Exterior Condition: (New > Total Damaged)
                                                        <br />
                                                        <label id="lblExteriorCondition" runat="server">
                                                        </label>
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
                            <td colspan="2" align="left" style="background-color: Silver; height: 20px;">
                                <strong style="color: White">Memo</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                <table width="100%" border="1">
                                    <tr>
                                        <td style="width: 25%">
                                            Labour Cost:
                                        </td>
                                        <td style="width: 25%">
                                            $<asp:Label ID="lblLabourCost" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="width: 25%">
                                            Parts Code:
                                        </td>
                                        <td style="width: 25%">
                                            $<asp:Label ID="lblPartsCode" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="width: 50%">
                                            Total including GST (Go ahead & Confirmed)
                                        </td>
                                        <td colspan="2" style="width: 50%">
                                            $<asp:Label ID="lblTotalIncludingGST" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 25%">
                                            Deposited:
                                        </td>
                                        <td colspan="3">
                                            $<asp:Label ID="lblDeposited" runat="server" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 25%">
                                            Remainder:
                                        </td>
                                        <td colspan="3">
                                            $<asp:Label ID="lblRemainder" runat="server" Font-Bold="true"></asp:Label>
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
                            <td colspan="2" align="left" style="background-color: Silver; height: 20px;">
                                <strong style="color: White">Parts Fixed</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                <asp:CheckBoxList ID="chkPartsFixed" runat="server" OnInit="chkPartsFixed_Init" RepeatColumns="5"
                                    RepeatDirection="Horizontal" Enabled="false">
                                </asp:CheckBoxList>
                                Others:
                                <asp:Label ID="lblPartsFixedOthers" runat="server" Style="width: 80%;" Height="10"></asp:Label>
                                <%--<input id="Text8" type="text" style="width: 80%; border-left-style: none; border-right-style: none;
                                    border-top-style: none; border-bottom-width: thin; border-bottom-style: dotted" />--%>
                                <%--<br />
                             <input id="Text6" type="text" style="width:100%; border-left-style: none; border-right-style: none;
                                            border-top-style: none; border-bottom-width:thin; border-bottom-style:dotted" />--%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" style="background-color: Silver; height: 20px;">
                                <strong style="color: White">Terms & Conditions</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                <b>1. </b>All phones carry an inspection fee of $20 non-refundable at the time of
                                book-in. 3 months warranty provided for the repaired parts only; but not including
                                physical or liquid damage. We accept no responsibility for any other existing problems.
                                <br />
                                <b>2. </b>All information in the phone will be lost due to repairs or unlock, and
                                customers take the responsibility of the 5% risk that phone can not be powered on
                                after repair.
                                <br />
                                <b>3. </b>It is the customer's own responsibility to back up any infomation saved
                                onto the phone such as phone numbers, pictures, messages, music etc since any data
                                loss can not be retrieved.
                                <br />
                                <b>4. </b>All phone repairs will void manufacturer's original 12 month warranty.
                                <br />
                                <b>5. </b>The Uncollected goods Act 1995 give us the right to recycle un collected
                                goods 30 days from written notification to pick-up as Mobile Tech.
                                <br />
                                <b>6. </b>Warranty repairs for Mobile Tech will only be undertaken if the original
                                tax invoice is provide as proof of purchase for that repair. Network unlocks only
                                means the Pre-Paid mobile phone can use different Sim Cards. Security unlocks are
                                Personal code unlocks only. We cannot unlock call-barring. If the phone been blocked
                                or restricted by network, owner should le us know about that and contact police.
                                After GMS hand-set unlocked, 3G Sim can not be actived in that.
                                <br />
                                <b>7. </b>We don't normally give refunds if you simply change your mind or make
                                a wrong selection.
                                <br />
                                <b>8. </b>Lost of the orginal agreement will hold the customer responsible for the
                                lost of their handset.
                                <br />
                                &nbsp;<br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                I, the undersigned, have read, fully understood and accept the Terms & Conditions
                                relating to my request for any Repairs performed, in signing thie document.
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td style="font-weight: bold">
                                            Name:
                                        </td>
                                        <td style="width: 175px">
                                            <input id="Text1" type="text" style="border-left-style: none; border-right-style: none;
                                                border-top-style: none; border-bottom-width: thin; border-bottom-style: dotted" />
                                        </td>
                                        <td style="font-weight: bold">
                                            Signature:
                                        </td>
                                        <td style="width: 175px">
                                            <input id="Text2" type="text" style="border-left-style: none; border-right-style: none;
                                                border-top-style: none; border-bottom-width: thin; border-bottom-style: dotted" />
                                        </td>
                                        <td style="font-weight: bold">
                                            Date:
                                        </td>
                                        <td style="width: 130px">
                                            <input id="Text3" type="text" style="width: 130px; border-left-style: none; border-right-style: none;
                                                border-top-style: none; border-bottom-width: thin; border-bottom-style: dotted" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                Mobile Tech accept non-responsibility for other coming up problems. Mobile Tech
                                provide 3 months warranty for The repaired parts only, but no including the physical
                                or liquid damage.
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td>
                                            Customer signature for phone pickup and satisfaction:
                                        </td>
                                        <td>
                                            <input id="Text4" type="text" style="border-left-style: none; border-right-style: none;
                                                border-top-style: none; border-bottom-width: thin; border-bottom-style: dotted" />
                                        </td>
                                        <td style="font-weight: bold">
                                            Date:
                                        </td>
                                        <td style="width: 130px">
                                            <input id="Text5" type="text" style="width: 130px; border-left-style: none; border-right-style: none;
                                                border-top-style: none; border-bottom-width: thin; border-bottom-style: dotted" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
            <!-- Print Button  -->
            <input class="noPrint" style="color: Red" type="button" value="Print This Page" onclick="window.print()" />
        </div>
    </div>
    </form>
</body>
</html>
