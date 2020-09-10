<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="prasad.aspx.cs" Inherits="prasad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="style3" 
        style="font-size: medium; font-family: 'Comic Sans MS'; text-decoration: underline">
    <strong>BUY PRASAD ONLINE</strong></p>
    <p class="style3" style="text-decoration: underline; font-size: x-small">
        <strong><em>&nbsp;<span style="font-size: medium">You can order online prasad of 
        the temples in vrindavan from the comforts of your home!</span></em></strong></p>
    <p class="style3" style="text-decoration: underline; font-size: x-small">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
            style="font-size: small">
            <asp:ListItem>CHAPPAN BHOG PRASAD</asp:ListItem>
            <asp:ListItem>DRY FRUIT PRASAD</asp:ListItem>
            <asp:ListItem>MATHURA PEDA PRASAD</asp:ListItem>
            <asp:ListItem>PISTA PEDA PRASAD</asp:ListItem>
            <asp:ListItem>SON PAPDI PRASAD</asp:ListItem>
        </asp:CheckBoxList>
&nbsp; </p>
    <p class="style3" style="font-size: x-small">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">TOTAL CHARGES</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb22" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
        </span></p>
    <p class="style3" style="font-size: x-small; font-weight: 700">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p class="style3" style="text-decoration: underline; font-size: x-small">
        &nbsp;</p>
    <p class="style3" style="text-decoration: underline; font-size: x-small">
        &nbsp;</p>
    <p class="style3" style="text-decoration: underline; font-size: x-small">
        &nbsp;</p>
    <p class="style3" style="text-decoration: underline; font-size: x-small">
        &nbsp;</p>
</asp:Content>

