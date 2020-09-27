<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Fest-ra.aspx.cs" Inherits="festival_ra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
        $('#festival').show();
    });
    </script>
    <p style="font-size: x-large; color: #CC0066; text-decoration: underline">
        <strong>RADHA ASHTAMI</strong></p>
    <p style="font-size: x-large; color: #CC0066; text-decoration: underline">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/radha-ashtmi.jpg" />
    </p>
    <p style="font-size: x-large; color: #CC0066">
        <span class="style3" 
            style="font-family: GothamLight; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(253, 252, 234); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        <strong><em><span style="background-color: #FFCCFF">Radha Ashtami is 
        commemorated as birth anniversary of Goddess Radha, the consort of Lord Krishna. 
        It falls on Ashtami Tithi during Shukla Paksha of Bhadrapada month. Devotees 
        keep fast on Radha Asthami day. Goddess Radha is worshipped during Madhyahna 
        Kala which is noon time according to Hindu division of the day. Currently Radha 
        Ashtami falls in the month of August or September in English calendar. Radha 
        Ashtami is also known as Radhashtami and Radha Jayanti.</span></em></strong></span></p>
</asp:Content>

