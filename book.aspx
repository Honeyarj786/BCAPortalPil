<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').show();
        $('#templesidebar').hide();
    });
    </script>
    <p style="font-family: 'Comic Sans MS'; font-size: large; text-decoration: underline; color: #000066">
        <strong>SELECT DATE AND TRAVELLERS</strong><cc1:ToolkitScriptManager 
            ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
    </p>
    <table style="width: 100%">
        <tr>
            <td style="color: #000066; font-size: medium">
                <b>date</b></td>
            <td style="width: 367px">
                <asp:TextBox ID="tb13" runat="server" style="color: #000066"></asp:TextBox>
                <cc1:CalendarExtender ID="tb13_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="tb13">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="color: #000066; font-size: medium">
                <b>no.of travellers</b></td>
            <td style="width: 367px">
                <asp:TextBox ID="tb14" runat="server" style="color: #000066"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #000066; font-size: medium">
                <b>guide needed</b></td>
            <td style="width: 367px">
                <asp:RadioButton ID="RadioButton1" runat="server" 
                    style="font-size: small; color: #000066; font-weight: 700;" Text="YES" />
                <span style="color: #000066">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RadioButton ID="RadioButton2" runat="server" 
                    style="font-size: small; color: #000066; font-weight: 700;" Text="NO" />
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; font-size: medium">
                total charges</td>
            <td style="width: 367px">
                <asp:TextBox ID="tb15" runat="server" style="color: #000066"></asp:TextBox>
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">click here to calculate</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 367px">
                <asp:Button ID="Button1" runat="server" BackColor="#3333CC" 
                    BorderColor="#3333CC" ForeColor="White" Text="SUBMIT" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

