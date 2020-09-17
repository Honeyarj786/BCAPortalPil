<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="banke.aspx.cs" Inherits="banke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').show();
        $('#templesidebar').hide();
    });
    </script>
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
                    style="font-size: small; font-weight: bold; " CssClass="style3" 
                    AutoPostBack="True" ontextchanged="tb16_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066">
                <b>TIMING</b></td>
            <td>
                <asp:RadioButtonList ID="TimingList" runat="server" 
                    
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Morning</asp:ListItem>
                    <asp:ListItem>Evevning</asp:ListItem>
                </asp:RadioButtonList>
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
                <asp:RadioButtonList ID="PedaList" runat="server" 
                   
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="PedaList_SelectedIndexChanged">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr style="font-size: medium">
            <td style="font-size: small; color: #000066">
            <span class="style3">
            
            </span>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Click Here To Calculate</asp:LinkButton>
            </td>
            <td style="font-size: small">
                <asp:TextBox ID="Total" runat="server"  ></asp:TextBox>
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

