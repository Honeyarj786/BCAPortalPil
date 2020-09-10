<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="timingv.aspx.cs" Inherits="timing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <strong><span class="style3" style="font-size: medium">TIMING OF </span>
    <span class="style3" 
        style="font-size: x-large; text-decoration: underline; font-family: 'Comic Sans MS'">
        VRINDAVAN TEMPLES</span></strong></p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id], [temple], [morn], [even], [day] FROM [timingv]">
    </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CssClass="style3">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="temple" HeaderText="temple name" 
                SortExpression="temple" />
            <asp:BoundField DataField="morn" HeaderText="morning" SortExpression="morn" />
            <asp:BoundField DataField="even" HeaderText="evening" SortExpression="even" />
            <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
        </Columns>
    </asp:GridView>
</p>
</asp:Content>

