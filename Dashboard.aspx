<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BuildingInspection.Dashboard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top:10%; width:80%; position:fixed; left:15%">
        <h2 style="margin-left:10px; text-decoration:underline">Dashboard</h2>
        <table style="width:80%; margin-left:10px">
            <tr>
                <td style="width:10%">
                    <asp:Label ID="scheduleID" runat="server" Text="Schedule ID :" style="font-weight:700"></asp:Label>
                </td>
                <td style="width:15%">
                    <asp:Label ID="scheduleIDValue" runat="server" Text=""></asp:Label>
                </td>
                <td style="width:10%">
                    <asp:Label ID="scheduleName" runat="server" Text="Schedule Name :" style="font-weight:700"></asp:Label>
                </td>
                <td style="width:15%">
                    <asp:Label ID="scheduleNameValue" runat="server" Text=""></asp:Label>
                </td>
                <td style="width:10%">
                    <asp:Label ID="resultID" runat="server" Text="Result ID :" style="font-weight:700"></asp:Label>
                </td>
                <td style="width:15%">
                    <asp:Label ID="resultIDValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>

        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>

        <table style="width:80%; margin-left:10px">
            <tr>
                <td style="margin-right:10px; margin-left:10px; width:15%;">
                    <table style="margin-left:30%">
                        <tr>
                            <td><h3 style="text-align: center">Status</h3></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="statusValue" runat="server" Text="" style="font-size:large; text-align:center"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="margin-right:10px; margin-left:10px; width:15%;">
                    <table style="margin-left:30%">
                        <tr>
                            <td><h3 style="text-align: center">Armed</h3></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="armedValue" runat="server" Text="" style="font-size:large; text-align:center"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="margin-right:10%; margin-left:10%; width:15%;">
                    <table style="margin-left:30%">
                        <tr>
                            <td><h3 style="text-align: center">Mode</h3></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="modeValue" runat="server" Text="" style="font-size:large; text-align:center"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="width:80%; margin-top:10px;">
                    <Columns>
                        <asp:BoundField DataField="attitude" HeaderText="Attitude" SortExpression="attitude" />
                        <asp:BoundField DataField="latitude" HeaderText="Latitude" SortExpression="latitude" />
                        <asp:BoundField DataField="longitude" HeaderText="Longitude" SortExpression="longitude" />
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
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [attitude], [latitude], [longitude] FROM [InspectionResult] WHERE ([resultID] = @resultID)">
            <SelectParameters>
                <asp:SessionParameter Name="resultID" SessionField="resultID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
