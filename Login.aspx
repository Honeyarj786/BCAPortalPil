<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
    });
    </script>
    <p style="font-size: xx-large; font-family: 'Comic Sans MS'; color: #000066; text-decoration: underline;">
        <strong>LOGIN</strong></p>
    <p>
        <table style="width: 100%">
            <tr>
                <td style="color: #000066; font-size: medium">
                    username</td>
                <td>
                    <asp:TextBox ID="tb11" runat="server" style="color: #000066"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #000066; font-size: medium">
                    password</td>
                <td>
                    <asp:TextBox ID="tb12" runat="server" style="color: #000066" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #000066; font-size: medium">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" BackColor="#3333CC" 
                        ForeColor="White" style="color: #000066" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #000066" 
                        Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #000066; font-size: medium">
                    new user?</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" 
                        onclick="LinkButton1_Click" style="color: #000066">create account</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

