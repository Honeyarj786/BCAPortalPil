<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Fest-rath.aspx.cs" Inherits="festival_rath" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
        $('#festival').show();
    });
    </script>

    <p class="style3" style="text-decoration: underline; font-size: x-large">
        <strong>RATH YATRA</strong></p>
    <p class="style3" style="text-decoration: underline; font-size: x-large">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/rath-yatra.jpg" />
    </p>

     <p class="style3" 
        style="box-sizing: inherit; margin: 0px 0px 1.75em; font-family: Merriweather, Georgia, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <strong><em><span style="background-color: #FFCCFF">Once a year there is a grand car festival (Ratha Yatra) known as 
                    Brahmotsava during the month of Caitra (March-April). This festival lasts for 10 
                    days. According to mythology this Rath Yatra symbolizes the Suryanarayana (The 
                    Sun God) nature of Lord Jagannath. During the Rath Yatra it is believed that 
                    Lord Shri Jagannath, Devi (Goddess) Subhadra and Lord Thakur Shri Balaram visit 
                    their devotees and bless them as they tour through the city seated in their 
                    Chariots.</span></em></strong></p>
    <p style="font-size: large; text-decoration: underline; color: #CC6699">
        &nbsp;</p>


    
</asp:Content>

