<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script>
     $(function () {
         $('#onlinesidebar').hide();
         $('#templesidebar').hide();
     });
    </script>
    
        <p style="font-size: medium">
        &nbsp;</p>
    <p style="font-size: medium">
        <span style="font-size: x-large; text-decoration: underline; color: #FF0066">
        <strong>FESTIVAL CELEBRATED IN</strong></span>
    </p>
    <p style="font-size: medium">
        <table style="width: 100%; height: 122px">
            <tr>
                <td style="width: 289px; color: #FF0066; text-decoration: underline; font-size: large">
                    <strong>MATHURA</strong></td>
                <td style="color: #FF0066; text-decoration: underline; font-size: large">
                    <strong>VRINDAVAN</strong></td>
            </tr>
            <tr>
                <td style="width: 289px; color: #000099; font-size: small">
                    <span></span>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        style="text-decoration: none; color: #000099">Krishna Janamastmi</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton7" runat="server" 
                        style="text-decoration: none; color: #000099; font-size: small" 
                        onclick="LinkButton7_Click">Lathmar</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 289px; color: #000099; font-size: small">
                    <span>
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        style="text-decoration: none; color: #000099">Radha Astami</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton8" runat="server" 
                        style="text-decoration: none; color: #000099; font-size: small" 
                        onclick="LinkButton8_Click">Range Bharni Ekadashi</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 289px; color: #000099; font-size: small">
                    <span></span>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        style="text-decoration: none; color: #000099">Holi</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton9" runat="server" 
                        style="text-decoration: none; color: #000099; font-size: small" 
                        onclick="LinkButton9_Click">Widows holi</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 289px; color: #000099; font-size: small">
                    <span></span>
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                        style="text-decoration: none; color: #000099">Goverdhan Puja</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton10" runat="server" 
                        style="text-decoration: none; color: #000099; font-size: small" 
                        onclick="LinkButton10_Click">Holika Dahan</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 289px; color: #000099; font-size: small">
                    <span>
                    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
                        style="text-decoration: none; color: #000099">Bhai duj</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton11" runat="server" 
                        style="text-decoration: none; color: #000099; font-size: small" 
                        onclick="LinkButton11_Click">Dulandi Holi</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 289px; color: #000099; font-size: small">
                    <span></span>
                    <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click" 
                        style="text-decoration: none; color: #000099">Rath Yatra</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton12" runat="server" 
                        style="text-decoration: none; color: #000099; font-size: small" 
                        onclick="LinkButton12_Click">Rang Panchmi</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
    <p style="font-size: medium">
        &nbsp;</p>
    <p style="font-size: medium">
        &nbsp;</p>
    <p style="font-size: medium">
        &nbsp;</p>

</asp:Content>

