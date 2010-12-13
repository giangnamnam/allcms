<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true" Inherits="MobileTech._Default" Codebehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td id="image">
                <img src="Images/h1.png" />
            </td>
            <td class="img-content" style="vertical-align: top">
                <ul class="style-image-content">
                    <label runat="server" id="lblShortAbout">
                            </label>
                    </ul>
                <div class="re-more" style="height: 20px;">
                    <a href="About.aspx">Read more</a></div>
            </td>
        </tr>
    </table>
    <div id="image-product" style="margin-top: 10px;">
        <div id="repair" class="product" style="margin: 0">
            <table width="100%">
                <tr>
                    <td style="background: url(Images/img1.png) repeat-x 0; height: 232px; width: 208px;">
                        <div style="height: 107px"></div>
                        <span class="pro-info" style="height: 50px;">
                            <h3 class="pro-title">
                                Accsessories</h3>
                            <p class="pro-content">
                                happy new year<br />
                                sdfsdgsdg</p>
                            <p class="re-more">
                                <a href="Repair.aspx">Read&nbsp;more</a></p>
                        </span>
                    </td>
                </tr>
            </table>
        </div>
        <div id="unclock" class="product">
            <img src="Images/img2.png" /><span class="pro-info" style="height: 50px"><h3 class="pro-title">
                Unclock</h3>
                <p class="pro-content">
                    happy new year<br />
                    sdgsdgsdgsgsh</p>
                <p class="re-more">
                    <a href="Unclock.aspx">Read&nbsp;more</a></p>
            </span>
        </div>
        <div id="accessories" class="product">
            <img src="Images/img3.png" /><span class="pro-info" style="height: 50px"><h3 class="pro-title">
                Accsessories</h3>
                <p class="pro-content">
                    happy new year<br />
                    sdfsdgsdg</p>
                <p class="re-more">
                    <a href="Accessory.aspx">Read&nbsp;more</a></p>
            </span>
        </div>
        <div id="product" class="product">
            <img src="Images/img4.png" /><span class="pro-info" style="height: 50px"><h3 class="pro-title">
                Ipad</h3>
                <p class="pro-content">
                    happy new year<br />
                    sdgsdgsh</p>
                <p class="re-more">
                    <a href="Ipad.aspx">Read&nbsp;more</a></p>
            </span>
        </div>
    </div>
</asp:Content>
