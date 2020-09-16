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
                <cc1:CalendarExtender ID="Mathuradate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="Mathuradate">
                </cc1:CalendarExtender> 
                To:
                <asp:TextBox ID="Mathuradateto" runat="server" style="color: #000066"></asp:TextBox>
                <cc1:CalendarExtender ID="Mathuradateto_CalendarExtender" runat="server" 
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


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No of Rooms:&nbsp;
            <asp:DropDownList ID="noOfroomsMathura" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
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
                <cc1:CalendarExtender ID="Vrindavandateto_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="Vrindavandateto">
                </cc1:CalendarExtender>   


        </td>
    </tr>
    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            <strong>SELECT Vrindavan Hotel</strong></td>
        <td style="height: 30px">      


            <asp:DropDownList ID="Vrindd" runat="server" ><asp:ListItem Selected="True">Vrinda Resort</asp:ListItem>
                <asp:ListItem>The Radha Ashok</asp:ListItem>
                <asp:ListItem>Brijwasi Land Inn</asp:ListItem>
                <asp:ListItem>The Mansion</asp:ListItem>
                <asp:ListItem>Hotel Panache</asp:ListItem>
                <asp:ListItem>Kridha Residency</asp:ListItem>
                <asp:ListItem>Hotel Wingston Mathura</asp:ListItem>
                <asp:ListItem>Brijwasi Royal</asp:ListItem>
                <asp:ListItem>Hotel Silver Star</asp:ListItem>
                <asp:ListItem>Hotel ganpati Palace</asp:ListItem>
                <asp:ListItem>Madhav Muskan Residency</asp:ListItem>
            </asp:DropDownList>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No of Rooms:&nbsp; <span>
            <asp:DropDownList ID="NoofroomsVrindha" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>


        </td>
    </tr>
     <tr>
            <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
                <b>No.of travellers</b></td>
            <td style="height: 30px">
               <asp:DropDownList ID="nooftravellers" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
                <b>Guide needed?</b></td>
            <td style="height: 30px">
                <asp:RadioButtonList ID="guideneeded" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                </asp:RadioButtonList>                
            </td>
        </tr>

    <tr>
        <td style="font-size: small; font-family: 'Comic Sans MS'; color: #000066; height: 30px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Click here to calculate total</asp:LinkButton>
            &nbsp;</td>
        <td style="height: 30px">      


            Total:&nbsp;&nbsp;&nbsp; 
            <asp:Label style="font-size: small; font-family: 'Comic Sans MS'; color: #000066;" ID="totalAccomodation" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;


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

