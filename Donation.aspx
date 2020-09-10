<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large; font-family: 'Comic Sans MS'; text-decoration: underline" 
        class="style3">
    <strong>DONATION</strong></p>
<table style="width: 100%">
    <tr>
        <td style="font-size: small; font-weight: bold;" class="style3">
            SELECT TEMPLE</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style3">
                <asp:ListItem>banke bihari</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="font-size: small; font-weight: bold;" class="style3">
            AMOUNT</td>
        <td>
            <asp:TextBox ID="tb23" runat="server"></asp:TextBox>
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
<p style="font-size: small; color: #FFFFFF">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p style="font-size: small; color: #FFFFFF">
    &nbsp;</p>
</asp:Content>

