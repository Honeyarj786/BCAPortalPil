<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="banke.aspx.cs" Inherits="banke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'Comic Sans MS'; font-size: small; " class="style3">
        <strong>SPECIAL ENTRY DARSHAN OF</strong></p>
    <p style="font-family: 'Comic Sans MS'; font-size: large; text-decoration: underline" 
        class="style3">
        <strong>BANKE BIHARI TEMPLE</strong></p>
    <table style="width: 100%">
        <tr>
            <td style="font-size: small; color: #000066">
                <b>NO OF PERSONS</b></td>
            <td>
                <asp:TextBox ID="tb16" runat="server" 
                    style="font-size: small; font-weight: bold; " CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066">
                <b>TIMING</b></td>
            <td>
                <asp:TextBox ID="tb17" runat="server" 
                    style="font-size: small; font-weight: bold; " CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; " class="style3">
                &nbsp;</td>
            <td style="font-size: small; color: #000066">
                <strong><em>TIMING:<br />
                MORNING-7:45AM-12:00PM<br />
                EVENING-5:30PM-9:30PM</em></strong></td>
        </tr>
        <tr style="font-size: medium">
            <td style="font-size: small; color: #000066">
                <b>PEDA(PRASAD)</td>
            <td style="font-size: small">
                <span class="style3">
                </b>
                </span>
                <asp:TextBox ID="tb18" runat="server" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#3333CC" ForeColor="White" 
                    Text="SUBMIT" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

