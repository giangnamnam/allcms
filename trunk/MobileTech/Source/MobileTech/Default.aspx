<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    Inherits="MobileTech._Default" CodeBehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td id="image">
                <img src="Images/h1.png" />
            </td>
            <td id="about" class="img-content" style="vertical-align: top">
                <ul class="style-image-content">
                    <label runat="server" id="lblShortAbout" style="line-height: 22px">
                    </label>
                </ul>
                <div class="re-more" style="height: 22px;">
                    <a href="About.aspx">Read more</a></div>
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" DefaultButton="btnTrackItem">
                    <div id="RepairTracking1" style="vertical-align: middle; text-align:left; float:right; margin-right: 20px;">
                        <label runat="server" id="Label1" style="line-height: 22px; color:White; font-weight:bold">Tracking your items</label>
                            <br />
                        <asp:TextBox ID="txtRepairNo" runat="server" Width="120px"></asp:TextBox>
                            <br />
                        <asp:LinkButton ID="btnTrackItem" CssClass="searchbutton" runat="server" OnClick="btnTrackItem_Click">Track</asp:LinkButton>
                    </div>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <div id="image-product" style="margin-top: 10px;">
        <div id="repair" class="product" style="margin: 0">
            <table width="100%">
                <tr>
                    <td style="background: url(Images/img1.png) repeat-x 0; height: 232px; width: 208px;">
                        <div style="height: 107px">
                        </div>
                        <span class="pro-info" style="height: 50px;">
                            <h3 class="pro-title">
                                Repair</h3>
                            <p class="pro-content">
                                Your mobile will
                                <br />
                                be repair in the
                                <br />
                                shortest time</p>
                            <p class="re-more" style="float: left">
                                <a href="Repair.aspx">Read&nbsp;more</a></p>
                        </span>
                    </td>
                </tr>
            </table>
        </div>
        <div id="unclock" class="product">
            <img src="Images/img2.png" /><span class="pro-info" style="height: 50px"><h3 class="pro-title">
                Unlock</h3>
                <p class="pro-content">
                    Text text text text text text text
                    <br />
                    text text
                    <br />
                    &nbsp;
                </p>
                <p class="re-more">
                    <a href="Unclock.aspx">Read&nbsp;more</a></p>
            </span>
        </div>
        <div id="accessories" class="product">
            <img src="Images/img3.png" /><span class="pro-info" style="height: 50px"><h3 class="pro-title">
                Accsessories</h3>
                <p class="pro-content">
                    Fint out our latest items for your mobile
                    <br />
                    <br />
                </p>
                <p class="re-more">
                    <a href="Accessory.aspx">Read&nbsp;more</a></p>
            </span>
        </div>
        <div id="ipad" class="product">
            <img src="Images/img4.png" /><span class="pro-info" style="height: 50px"><h3 class="pro-title">
                Ipad</h3>
                <p class="pro-content">
                    Text text text text text text text
                    <br />
                    text text
                    <br />
                    &nbsp;
                </p>
                <p class="re-more">
                    <a href="Ipad.aspx">Read&nbsp;more</a></p>
            </span>
        </div>
    </div>
</asp:Content>
