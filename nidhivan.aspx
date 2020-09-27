<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="nidhivan.aspx.cs" Inherits="NIDHIVAN" %>

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
        NIDHIVAN<strong> TEMPLE</strong></p>
    <table style="width: 100%">
        <tr>
            <td style="font-size: small; color: #000066">
                <b>No Of Persons</b></td>
            <td>
                <asp:TextBox ID="tb19" runat="server" CssClass="style3" 
                    ontextchanged="tb19_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066">
                <b>Timings</b></td>
            <td>
            <asp:RadioButtonList ID="TimingList2" runat="server" 
                    
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Morning</asp:ListItem>
                    <asp:ListItem>Evevning</asp:ListItem>
                </asp:RadioButtonList>    
            </td>
        </tr>
        <tr>
            <td style="font-size: small; " class="style3">
                &nbsp;</td>
            <td style="font-size: small" class="style3">
                 <strong><em>TIMING:<br />
                MORNING-7:45AM-12:00PM<br />
                EVENING-5:30PM-9:30PM</em></strong></td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066">
                <b>Sringar</b></td>
            <td>
                <asp:RadioButtonList ID="Sringar" runat="server" 
                   
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="Sringar_SelectedIndexChanged">
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
                    Text="submit" onclick="Button1_Click1" />
            </td>
        </tr>
    </table>
</asp:Content>

