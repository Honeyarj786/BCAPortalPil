<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="accomodation.aspx.cs" Inherits="accomodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: large; font-family: 'Comic Sans MS'; color: #FFFFFF; text-decoration: underline">
    <strong>A<span style="color: #000066">CCOMODATION</span></strong></p>
<table style="width: 100%">
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT LOCATION</strong></td>
        <td style="height: 30px">
            <asp:CheckBoxList ID="CheckBoxList2" runat="server" AutoPostBack="True" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Mathura</asp:ListItem>
                <asp:ListItem>Vrindavan</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#3333CC" 
                BorderColor="#3333CC" ForeColor="White" Text="SUBMIT" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

