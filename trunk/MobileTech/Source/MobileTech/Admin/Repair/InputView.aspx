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
                    <asp:DropDownList ID="ddlStatus" runat="server" Width="300px">
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
                                <asp:TextBox ID="txtRepairNo" runat="server"></asp:TextBox>
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
                                Date:<asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Contact:<asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
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
                                Model:<asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <td>
                                IMEI:<asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2" valign="top">
                                Fault Report:<asp:TextBox ID="TextBox5" runat="server" Height="70px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                <table width="100%" border="1">
                                    <tr>
                                        <td align="center">
                                            No Sim <br /> <asp:CheckBox runat="server"/>
                                        </td>
                                        <td align="center">
                                             WB <br /> <asp:TextBox ID="TextBox6" runat="server" Width="90px"></asp:TextBox>
                                        </td>
                                        <td align="center">
                                             NB <br /> <asp:TextBox ID="TextBox7" runat="server" Width="90px"></asp:TextBox>
                                        </td>
                                        <td  align="center">
                                             Momory Card <br /> 
                                             <asp:RadioButtonList runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="Y" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="N"></asp:ListItem>
                                             </asp:RadioButtonList>
                                        </td>
                                        <td align="center" style="width:50%">
                                           Exterior Condition: (New > Total Damaged) <br />
                                           10  9  8  7  6  5  4  3  2  1
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
                                Labour Cost:<asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                                ControlToValidate="txtCusName"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                               $<asp:TextBox ID="TextBox9" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Parts Code:
                            </td>
                            <td>
                                $<asp:TextBox ID="TextBox12" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Total including GST (Go ahead & Confirmed)
                            </td>
                            <td>
                                $<asp:TextBox ID="TextBox11" runat="server" Width="300px"></asp:TextBox>
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
                     LCD, Ribbon, Ribbon Connector, Resistors, Light Emitting Diodes, Capacitors, Mic, Speaker, Buzz, Vibration, <br />
                    Circuit Board Repair, Circuit Board Cleaning, Software, Toggle, Keypad, Multimedia, Reseption, Volume,<br />
                    Antenna, Background Light, On-off Button, Charger Connector, Housing, Camera, BGAIC<br />
                    Others: <asp:TextBox ID="TextBox10" runat="server" Height="30px" TextMode="MultiLine" Width="700px"></asp:TextBox>
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
                         <li>
                            2. All information in the phone will be lost due
                         </li>
                     </ol>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
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
