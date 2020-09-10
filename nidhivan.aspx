<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="nidhivan.aspx.cs" Inherits="NIDHIVAN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'Comic Sans MS'; font-size: small; " class="style3">
        <strong>SPECIAL ENTRY DARSHAN OF</strong></p>
    <p style="font-family: 'Comic Sans MS'; font-size: large; text-decoration: underline" 
        class="style3">
        NIDHIVAN<strong> TEMPLE</strong></p>
    <table style="width: 100%">
        <tr>
            <td style="font-size: small; color: #000066">
                <b>no of person</b></td>
            <td>
                <asp:TextBox ID="tb19" runat="server" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066">
                <b>timing</b></td>
            <td>
                <asp:TextBox ID="tb20" runat="server" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; " class="style3">
                &nbsp;</td>
            <td style="font-size: small" class="style3">
                <strong>timing:<br />
                SUMMER-5:00 am to 8:pm<br />
                WINTER:6:00 am TO 7:00pm</strong></td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066">
                <b>sringar</b></td>
            <td>
                <asp:TextBox ID="tb21" runat="server" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#3333CC" ForeColor="White" 
                    Text="submit" onclick="Button1_Click1" />
            </td>
        </tr>
    </table>
</asp:Content>

