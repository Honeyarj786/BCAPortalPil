<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $('#onlinesidebar').hide();
            $('#templesidebar').hide();
        });
    </script>
    <asp:Label ID="PaymentMessage" runat="server" Font-Bold="True" 
        Font-Size="Medium"></asp:Label>
        <br />
    <p style="font-size: large; font-family: 'Comic Sans MS'; color: #FFFFFF; text-decoration: underline">
        <strong><span style="color: #000066">Select Payment Method</span></strong></p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Font-Size="Medium"
        RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem>Debit/Credit Card</asp:ListItem>
        <%-- <asp:ListItem>Net Banking</asp:ListItem>--%>
        <asp:ListItem>UPI</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    <asp:Panel ID="Credit" runat="server">
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp; Name on Card
                    <br />
                    <asp:TextBox ID="Carnam" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp; Card Number
                    <br />
                    <asp:TextBox ID="Carnum" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;Expiry Date
                    <br />
                    <asp:DropDownList ID="Exmon" runat="server">
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
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="Exyear" runat="server">
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </td>
                <td>
                    &nbsp; Enter CVV
                    <br />
                    <asp:TextBox ID="cvv" runat="server">           
            
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                    <asp:Button ID="PayButton" runat="server" BackColor="#3333CC" BorderColor="#3333CC"
                        ForeColor="White" Text="Pay" OnClick="PayButton_Click1" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    
    <asp:Panel ID="upi" runat="server">
        <table>
            <tr>
                <td style="width: 166px">
                    <asp:Label ID="upilabel" runat="server" Text=" Please enter your UPI ID">
                    </asp:Label>
                    <br />
                    <asp:TextBox ID="upiid" runat="server">           
            
                    </asp:TextBox>
                </td>
                <td style="width: 97px; vertical-align: bottom;">
                    <asp:Button ID="upiverify" runat="server" BackColor="#3333CC" BorderColor="#3333CC"
                        ForeColor="White" Text="Verify" OnClick="upiverify_Click" />
                </td>
                <td style="width: 171px">
                    <asp:Label ID="otplabel" runat="server" Text="Enter OTP">
                    </asp:Label>
                    <br />
                    <asp:TextBox ID="OTP" runat="server"></asp:TextBox>
                </td>
                <td style="vertical-align: bottom">
                    <asp:Button ID="upipay" runat="server" BackColor="#3333CC" BorderColor="#3333CC"
                        ForeColor="White" Text="Pay" OnClick="upipay_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
