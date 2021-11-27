<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report(Select).aspx.cs" Inherits="BuildingInspection.Report_Select_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        td{
            height:25px;
        }
    </style>
    <div style="margin-top:1%; width:80%; position:fixed; left:7%">
        <h3 style="margin-left:10%">Report Details</h3>
        <asp:Button ID="back" runat="server" Text="Back" style="margin-left:85%;" class="btn btn-default" OnClick="back_Click"/>
        <table style="width:80%; margin-left:10%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="user" runat="server" Text="User Information :" style="font-weight:900; text-decoration:underline"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="userID" runat="server" Text="User ID :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="userIDValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top:20px;">
                    <asp:Label ID="result" runat="server" Text="Report Information :" style="font-weight:900; text-decoration:underline"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="reportID" runat="server" Text="Report ID :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="reportIDValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="reportDate" runat="server" Text="Report Create Date :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="reportDateValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="reportTime" runat="server" Text="Report Created Time :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="reportTimeValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="reportResult" runat="server" Text="Report Result :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="reportResultValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top:20px;">
                    <asp:Label ID="schedule" runat="server" Text="Schedule Information :" style="font-weight:900; text-decoration:underline"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:40%">
                    <asp:Label ID="scheduleID" runat="server" Text="Schedule ID :" style="font-weight:700"></asp:Label>
                </td>
                <td style="width:60%">
                    <asp:Label ID="scheduleIDValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="scheduleName" runat="server" Text="Schedule Name :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="scheduleNameValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="scheduleStatus" runat="server" Text="Schedule Status :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="scheduleStatusValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top:20px;">
                    <asp:Label ID="flighInfo" runat="server" Text="Flight Information :" style="font-weight:900; text-decoration:underline"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="flightInfoID" runat="server" Text="Flight Info ID :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="flightInfoIDValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="flightInfoDate" runat="server" Text="Flight Info Date :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="flightInfoDateValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="flightInfoTime" runat="server" Text="Flight Info Time :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="flightInfoTimeValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="taskLocationLatitude" runat="server" Text="Task Location Latitude :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="taskLocationLatitudeValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="taskLocationLongitude" runat="server" Text="Task Location Longitude :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="taskLocationLongitudeValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
