<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="BuildingInspection.Report1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="margin-left:10%; margin-top:10%;">Reports</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="reportID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="width:80%; margin-left:7%;">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select" OnClick="Select_OnClick" CommandArgument='<%#Eval("reportID") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="reportID" HeaderText="Report ID" InsertVisible="False" ReadOnly="True" SortExpression="reportID" />
            <asp:BoundField DataField="reportName" HeaderText="Report Name" SortExpression="reportName" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
            <asp:BoundField DataField="resultStatus" HeaderText="Result Status" SortExpression="resultStatus" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT R.reportID, R.reportName, R.date, R.time, IR.resultStatus FROM InspectionResult AS IR INNER JOIN Report AS R ON IR.reportID = R.reportID WHERE (IR.resultStatus = 'End')"></asp:SqlDataSource>
</asp:Content>
