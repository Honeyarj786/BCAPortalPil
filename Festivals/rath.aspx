<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="rath.aspx.cs" Inherits="festival_rath" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
    });
    </script>

    <p class="style3" style="text-decoration: underline; font-size: x-large">
        <strong>RATH YATRA</strong></p>
    <p class="style3" style="text-decoration: underline; font-size: x-large">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/rath-yatra.jpg" />
    </p>
    <div id="con" 
        style="width: 638.075px; height: auto; float: left; color: rgb(0, 0, 0); font-family: GothamLight; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(253, 252, 234); text-decoration-style: initial; text-decoration-color: initial;">
        <div class="c2" 
            style="width: 350.938px; height: auto; float: left; margin-top: 7px;">
            <div class="text-2" style="margin-top: -10px;">
                <p class="style3" 
                    style="float: left; width: 561px; font-size: small; line-height: 20px; text-align: justify; padding-left: 65px; background-color: #FF99FF;">
                    <strong><em>Once a year there is a grand car festival (Ratha Yatra) known as 
                    Brahmotsava during the month of Caitra (March-April). This festival lasts for 10 
                    days. According to mythology this Rath Yatra symbolizes the Suryanarayana (The 
                    Sun God) nature of Lord Jagannath. During the Rath Yatra it is believed that 
                    Lord Shri Jagannath, Devi (Goddess) Subhadra and Lord Thakur Shri Balaram visit 
                    their devotees and bless them as they tour through the city seated in their 
                    Chariots.</em></strong></p>
            </div>
        </div>
    </div>
    <strong><em>
    <br class="style3" style="font-size: small; background-color: #FF99FF" />
    </em></strong>
    <p class="style3" style="font-size: x-large">
        &nbsp;</p>
</asp:Content>

