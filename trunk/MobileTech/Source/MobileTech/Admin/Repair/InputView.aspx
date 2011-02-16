<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Share/AdminSite.Master" AutoEventWireup="true" Inherits="MobileTech.Admin.Repair.InputView" Codebehind="InputView.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 110px;
            height: 51px;
        }
        .style2
        {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sidebar">
        <ul class="sideNav">
            <li><a id="A1" href="Default.aspx" class="active" runat="server">Search Repair</a></li>
            <li><a id="A2" href="InputView.aspx" runat="server">Input View</a></li>
        </ul>
    </div>
   <asp:Panel ID="pnlAdd" Width="100%" runat="server">
        <table width="100%" border="0">
            <tr>
                <td style="font-weight: bold; font-size: small" class="style1">
                    Status: (*)&nbsp;
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlStatus" runat="server" Width="300px" 
                        oninit="ddlStatus_Init">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                        ControlToValidate="ddlStatus"></asp:RequiredFieldValidator>
                </td>
            </tr>
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
                                <asp:TextBox ID="txtRepairNo" runat="server" ReadOnly="true" Font-Size="24" ForeColor="Red" Width="80"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                        ControlToValidate="txtRepairNo"></asp:RequiredFieldValidator>
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
                                            <asp:RadioButtonList ID="radioExteriorCondition" runat="server" 
                                                oninit="radioExteriorCondition_Init">
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
                    <asp:CheckBoxList ID="chkPartsFixed" runat="server" oninit="chkPartsFixed_Init" 
                        RepeatColumns="7" RepeatDirection="Horizontal">
                    </asp:CheckBoxList>
                    
                </td>
            </tr>
             <tr>
                <td colspan="2" style="height:10px;">
                </td>
            </tr>
            <tr>
                <td align="right">
                     <asp:Button ID="btnViewForm" runat="server" Text="View Form"  Width="90px" 
                         OnClientClick="javascript:window.open('ViewForm.aspx')"/>
                </td>
                <td align="center">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="90px" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="90px" Visible="false"
                        OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete it?');" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" CausesValidation="False"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    
</asp:Content>
