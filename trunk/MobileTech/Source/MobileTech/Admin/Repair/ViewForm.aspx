<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewForm.aspx.cs" Inherits="MobileTech.Admin.Repair.ViewForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Panel ID="pnlAdd" Width="100%" runat="server">
        <table width="1024px" border="0">
            <tr>
                <td colspan="2">
                    <table width="100%" border="0">
                       <tr>
                            <td style="background-image:url('../../../../Images/Repair/RepairLogo.jpg'); width:104px; height:170px">
                            </td>
                            <td align="center">
                                <span style="font-weight:bold; font-size:52px">Mobile Tech</span> 
                                <hr />
                                <span style="font-weight:bold; font-size:24px">PLANs, CONNECTION & REPAIRS</span> 
                            </td>
                            <td style="width:25%">
                                <span style="font-weight:bold; font-size:24px">No:</span>  
                                <asp:Label ID="lblRepairNo" runat="server" Font-Size="24" ForeColor="Red"></asp:Label>
                               
                                <br /><br />
                                <span style="font-size:16px">Rockingham<br />
                                Service Agreement<br /></span>
                                T: <span style="font-weight:bold; font-size:18px">9528 2888</span><br />
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
                <td align="right">
                    Staff Name: (*)<asp:TextBox ID="txtStaffName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        ControlToValidate="txtStaffName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color:Silver; height:20px;">
                    <strong style="color:White">Customer Information </strong>
                </td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <table width="100%" border="1">
                        <tr>
                            <td>
                                Name:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCusName" runat="server" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                ControlToValidate="txtCusName"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                Date:<asp:TextBox ID="txtCusDate" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Contact:<asp:TextBox ID="txtCusContact" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height:10px;">
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color:Silver; height:20px;">
                    <strong style="color:White">Product Information </strong>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%" border="1">
                        <tr>
                            <td>
                                Model:<asp:TextBox ID="txtProductModel" runat="server" Width="150px"></asp:TextBox>
                                Colour:<asp:TextBox ID="txtPrductColour" runat="server" Width="150px"></asp:TextBox>
                            </td>
                            <td>
                                IMEI:<asp:TextBox ID="txtProductIMEI" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2" valign="top">
                                Fault Report:<asp:TextBox ID="txtProductFaultReport" runat="server" Height="70px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                <table width="100%" border="1">
                                    <tr>
                                        <td align="center">
                                            No Sim <br /> <asp:CheckBox ID="chkNoSim" runat="server"/>
                                        </td>
                                        <td align="center">
                                             WB <br /> <asp:TextBox ID="txtWB" runat="server" Width="90px"></asp:TextBox>
                                        </td>
                                        <td align="center">
                                             NB <br /> <asp:TextBox ID="txtNB" runat="server" Width="90px"></asp:TextBox>
                                        </td>
                                        <td  align="center">
                                             Memory Card <br /> 
                                             <asp:RadioButtonList ID="radioMemoryCard" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="Y" Value="Y" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="N" Value="N"></asp:ListItem>
                                             </asp:RadioButtonList>
                                        </td>
                                        <td align="center" style="width:50%">
                                           Exterior Condition: (New > Total Damaged) <br />
                                            <asp:RadioButtonList ID="radioExteriorCondition" runat="server">
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                         
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height:10px;">
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color:Silver; height:20px;">
                    <strong style="color:White">Memo</strong>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%" border="1">
                        <tr>
                            <td>
                                Labour Cost:
                            </td>
                            <td>
                               $<asp:TextBox ID="txtLabourCost" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Parts Code:
                            </td>
                            <td>
                                $<asp:TextBox ID="txtPartsCode" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Total including GST (Go ahead & Confirmed)
                            </td>
                            <td>
                                $<asp:TextBox ID="txtTotalIncludingGST" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height:10px;">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color:Silver; height:20px;">
                    <strong style="color:White">Parts Fixed</strong>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:CheckBoxList ID="chkPartsFixed" runat="server"
                        RepeatColumns="7" RepeatDirection="Horizontal">
                    </asp:CheckBoxList>
                    
                </td>
            </tr>
             
        </table>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
