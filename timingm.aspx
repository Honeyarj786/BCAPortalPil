<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="timingm.aspx.cs" Inherits="timingm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="style4" style="font-size: medium"><strong>&nbsp;</strong><span><strong><span class="style3" style="font-size: medium">TIMING OF </span></strong>
        </span></span><span>
    <strong><span class="style3">
        <span class="style4">
        <span style="font-family: 'Comic Sans MS'; font-size: x-large; text-decoration: underline">
        MATHURA</span></span></span><span class="style3" 
            style="font-size: x-large; text-decoration: underline">&#39;s</span><span class="style4" style="font-size: medium"><span class="style3" 
        style="font-size: x-large; text-decoration: underline; font-family: 'Comic Sans MS'">TEMPLES</span></span></strong></span>&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [id], [temple], [morn], [even], [day] FROM [timingm]">
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" style="color: #000066">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="temple" HeaderText="Temple name" 
                    SortExpression="temple" />
                <asp:BoundField DataField="morn" HeaderText="Morning" SortExpression="morn" />
                <asp:BoundField DataField="even" HeaderText="Evening" SortExpression="even" />
                <asp:BoundField DataField="day" HeaderText="Days" SortExpression="day" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

