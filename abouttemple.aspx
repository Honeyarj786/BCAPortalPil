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
                <td style="width: 353px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>VRINDAVAN</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Shri Krishna Janmabhoomi Temple</asp:LinkButton>
                </td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click">Garund Govind Temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Shri Dwarkadhish Temple</asp:LinkButton>
                </td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Prem Mandir</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Geeta Mandir</asp:LinkButton>
                </td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton12" runat="server" onclick="LinkButton12_Click">Shri Jugalkishore Ji Temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Keshav Dev Temple </asp:LinkButton>
                </td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton13_Click"> Shri Banke Biahri Temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">Shri Bhuteshwar Mahadev Temple	</asp:LinkButton>
                </td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton14" runat="server" onclick="LinkButton14_Click">Shri Madan Mohan Temple	</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">Maa Chamunda Temple</asp:LinkButton>
                </td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton15" runat="server" onclick="LinkButton15_Click">Nidhivan Temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton16" runat="server" onclick="LinkButton16_Click">ISCKON Temple</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 353px">
                    <asp:LinkButton ID="LinkButton17" runat="server" onclick="LinkButton17_Click">Shri Radha Gokulananda Ji Temple</asp:LinkButton>
                </td>
            </tr>
                               
         </table>
    </p>
</asp:Content>

