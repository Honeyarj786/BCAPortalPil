<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(function () {
        $('#onlinesidebar').hide();
        $('#templesidebar').hide();
    });
    </script>
    <p style="font-size: large; color: #000066; text-decoration: underline; font-family: 'Comic Sans MS'">
        <strong>CREATE YOUR ACCOUNT </strong>
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
    </p>
    <table style="width: 100%">
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                <b>first name</b></td>
            <td>
                <asp:TextBox ID="tb1" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="color: #000066; font-size: small">
                <b>last name</b></td>
            <td>
                <asp:TextBox ID="tb2" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                <b>email</b></td>
            <td>
                <asp:TextBox ID="tb3" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF">
                &nbsp;</td>
            <td style="color: #000066">
                </b>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold; height: 40px;">
                <b>password</b></td>
            <td style="height: 40px">
                <asp:TextBox ID="tb4" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black" TextMode="Password"></asp:TextBox>
            </td>
            <td style="color: #000066; font-size: small; height: 40px; font-weight: 700;">
                c<b><span style="color: #000066">onfirm password</span></b></td>
            <td style="height: 40px">
                <asp:TextBox ID="tb5" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    ForeColor="Black" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                <b>contact no</b></td>
            <td>
                <asp:TextBox ID="tb6" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF">
                &nbsp;</td>
            <td style="color: #000066">
                </b>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                D.O.B</td>
            <td>
                <asp:TextBox ID="tb7" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black"></asp:TextBox>
                <cc1:CalendarExtender ID="tb7_CalendarExtender" runat="server" Enabled="True" 
                    TargetControlID="tb7">
                </cc1:CalendarExtender>
            </td>
            <td style="color: #FFFFFF">
                &nbsp;</td>
            <td style="color: #000066">
                </b>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                <b>gender</td>
            <td style="color: #000066">
                <asp:RadioButton ID="RadioButton1" runat="server" style="font-size: small" 
                    Text="MALE" />
                <span style="font-size: small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="FEMALE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            </span>
            <td style="color: #000066; font-size: small">
                &nbsp;</td>
            <td style="color: #000066">
                </b>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                <b>state</b></td>
            <td>
                <asp:TextBox ID="tb8" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="color: #000066; font-size: small">
                <b>city</b></td>
            <td>
                <asp:TextBox ID="tb9" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; color: #000066; font-weight: bold">
                <b>address</b></td>
            <td>
                <asp:TextBox ID="tb10" runat="server" 
                    style="font-weight: bold; font-size: small; color: #000066" 
                    BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF">
                &nbsp;</td>
            <td style="color: #000066">
                </b>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; font-size: x-small; color: #FFFFFF">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#3333CC" BorderStyle="Solid" 
                    Font-Bold="True" Font-Names="Arial" ForeColor="White" 
                    style="font-weight: bold; font-size: medium; color: #FFFFFF" 
                    Text="SIGN IN" onclick="Button1_Click" />
            </td>
            <td>
                <b>
            </td>
            <td>
                </b>
            </td>
        </tr>
    </table>
</asp:Content>

