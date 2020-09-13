<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="accomodation.aspx.cs" Inherits="accomodation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
    $(function () {
        $('#onlinesidebar').show();
        $('#templesidebar').hide();
    });
    </script>
    <p style="font-size: large; font-family: 'Comic Sans MS'; color: #FFFFFF; text-decoration: underline">
    <strong><span style="color: #000066">ACCOMODATION</span></strong></p>
    <cc1:ToolkitScriptManager 
            ID="ToolkitScriptManager2" runat="server">
        </cc1:ToolkitScriptManager>
<table style="width: 100%">
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT LOCATION</strong></td>
        <td style="height: 30px">
           <%-- <asp:CheckBoxList ID="CheckBoxList2" runat="server" AutoPostBack="True" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Mathura</asp:ListItem>
                <asp:ListItem>Vrindavan</asp:ListItem>
            </asp:CheckBoxList>--%>
            <asp:CheckBox ID="Mathurachkbox" runat="server" 
                oncheckedchanged="Mathurachkbox_CheckedChanged" Text="Mathura" 
                AutoPostBack="True" />



            <asp:CheckBox ID="Vrindavanchkbox" runat="server" 
                oncheckedchanged="Vrindavanchkbox_CheckedChanged" Text="Vrindavan" 
                AutoPostBack="True" />


        </td>
    </tr>
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT Mathura Stay Date </strong></td>
        <td style="height: 30px"> 
        From:    
         <asp:TextBox ID="Mathuradate" runat="server" style="color: #000066"></asp:TextBox>
                <cc1:CalendarExtender ID="tb13_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="Mathuradate">
                </cc1:CalendarExtender> 
                To:
                <asp:TextBox ID="Mathuradateto" runat="server" style="color: #000066"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" 
                    Enabled="True" TargetControlID="Mathuradateto">
                </cc1:CalendarExtender>   


        </td>
    </tr>
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT Mathura Hotel</strong></td>
        <td style="height: 30px">      


            <asp:DropDownList ID="MathuraHoteldd" runat="server">
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem>Hotel</asp:ListItem>
                <asp:ListItem>Hotel4</asp:ListItem>
            </asp:DropDownList>


        </td>
    </tr>
     <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT Vrindavan Stay Date </strong></td>
        <td style="height: 30px">   
        From:   
         <asp:TextBox ID="Vrindavandate" runat="server" style="color: #000066"></asp:TextBox>
                <cc1:CalendarExtender ID="Vrindavandate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="Vrindavandate">
                </cc1:CalendarExtender> 
                To:  
                <asp:TextBox ID="Vrindavandateto" runat="server" style="color: #000066"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" 
                    Enabled="True" TargetControlID="Vrindavandateto">
                </cc1:CalendarExtender>   


        </td>
    </tr>
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT Vrindavan Hotel</strong></td>
        <td style="height: 30px">      


            <asp:DropDownList ID="Vrindd" runat="server">
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem>Hotel1</asp:ListItem>
                <asp:ListItem>Hotel2</asp:ListItem>
            </asp:DropDownList>


        </td>
    </tr>
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            &nbsp;</td>
        <td style="height: 30px">      


            <asp:Label ID="Label1" runat="server" Text="Total"></asp:Label>


        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#3333CC" 
                BorderColor="#3333CC" ForeColor="White" Text="SUBMIT" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

