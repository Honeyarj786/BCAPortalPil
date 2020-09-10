<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="abouttemple.aspx.cs" Inherits="abouttemple" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
    });
    </script>
    <p class="style3" style="font-size: medium; font-family: 'Comic Sans MS'">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="text-decoration: underline">&nbsp;ABOUT TEMPLES</span></strong></p>
    <p class="style3" style="font-size: medium; font-family: 'Comic Sans MS'">
        <strong>&nbsp;</strong><table style="width: 100%">
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>MATHURA</strong></td>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>VRINDAVAN</strong></td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            style="font-size: x-small; " onclick="LinkButton1_Click">Shree Krishna Janambhoomi temple</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton8" runat="server" style="font-size: x-small">Govind Dev temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton2" runat="server" 
            style="font-size: x-small; " onclick="LinkButton2_Click">Dwarkadish Temple</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton9" runat="server" style="font-size: x-small">Prem mandir</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton3" runat="server" 
            style="font-size: x-small; " onclick="LinkButton3_Click">Gita Mandir</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton10" runat="server" style="font-size: x-small">Uma Shakti Peet</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton4" runat="server" 
            style="font-size: x-small; ">Jugal Kishore Mandir</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton11" runat="server" style="font-size: x-small">Banke Bihari Temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton5" runat="server" 
            style="font-size: x-small; ">Kesava Deo Temple</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton12" runat="server" style="font-size: x-small">Madan Mohan temple </asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton6" runat="server" 
            style="font-size: x-small; ">Bhuteshwar Temple</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton13" runat="server" style="font-size: x-small">Nidhivan temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    <span>
        <strong>
        <asp:LinkButton ID="LinkButton7" runat="server" 
            style="font-size: x-small; ">Chamunda devi Temple</asp:LinkButton>
        </strong>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton14" runat="server" style="font-size: x-small">ISCKON temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton15" runat="server" style="font-size: x-small">Gokul Nanda</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

