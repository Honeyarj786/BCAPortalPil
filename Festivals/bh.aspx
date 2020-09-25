<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bh.aspx.cs" Inherits="festival_bh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
    });
    </script>
    <p style="font-size: x-large; color: #FF0066; text-decoration: underline">
        <strong>BHAI DUJ</strong></p>
    <p style="font-size: large; color: #FF0066; text-decoration: underline">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bhai-dauj.jpg" />
    </p>
    <p style="font-size: large; color: #FF0066">
        <span class="style3" 
            style="font-family: GothamLight; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(253, 252, 234); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        <strong><em><span style="background-color: #FF99FF">Two Days after Diwali and 
        next day of Goverdhan Puja, festival of Yam Dwitiya also known as Bhai Dauj 
        celebrated in Mathura . On this day Brother &amp; Sister together take holy dip in 
        Yamuna River and visit the Yamuna Temple located near Vishram Ghat, Mathura and 
        seek their blessings.</span></em></strong></span></p>
</asp:Content>

