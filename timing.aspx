<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="timing.aspx.cs" Inherits="timing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style3" style="font-size: large; text-decoration: underline">
        <strong>TIMING OF TEMPLES OF</strong></p>
    <p class="style3" style="font-size: large; font-weight: 700">
        1.<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="text-decoration: none">MATHURA</asp:LinkButton>
    </p>
    <p class="style3" style="font-size: large; font-weight: 700">
        2.<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            style="text-decoration: none">VRINDAVAN</asp:LinkButton>
    </p>
</asp:Content>

