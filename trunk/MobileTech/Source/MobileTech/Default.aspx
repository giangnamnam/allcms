<%@ Page Title="" Language="C#" MasterPageFile="~/ProductSite.Master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="MobileTech._Default" %>

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
                    We are 100% independently owned company in Western Australia. We have an passionated
                    expert team that promise to provide you an outstanding job. Explore our website
                    to find out how we can assist you.</ul>
                <div class="re-more" style="height: 20px;">
                    <a href="#">Read more</a></div>
            </td>
        </tr>
    </table>
    <div id="image-product" style="margin-top: 10px;">
        <span class="product" style="margin: 0">
            <img src="Images/h2.png" /></span> <span class="product">
                <img src="Images/h3.png" /></span> <span class="product">
                    <img src="Images/h4.png" /></span> <span class="product">
                        <img src="Images/h5.png" /></span>
    </div>
</asp:Content>
