<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneSchedule(Select).aspx.cs" Inherits="BuildingInspection.DroneSchedule_Select_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:5%; width:80%; position:fixed; left:15%">
        <h3 style="margin-left:10%">Drone Schedule Details</h3>
        <table style="width:80%; margin-left:10%">
            <tr>
                <td colspan="2" style="margin-top:10px">
                    <asp:Label ID="schedule" runat="server" Text="Schedule Details :" style="font-weight:900; text-decoration:underline"></asp:Label>
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
                <td>
                    <asp:Label ID="resultID" runat="server" Text="Result ID :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="resultIDValue" runat="server" Text=""></asp:Label>
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
                <td>
                    <asp:Label ID="droneID" runat="server" Text="Drone ID :" style="font-weight:700"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="droneIDValue" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin-top:10px">
                    <asp:Label ID="flighInfo" runat="server" Text="Flight Info Details :" style="font-weight:900; text-decoration:underline"></asp:Label>
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
            <tr>
                <td colspan="2" style="text-align:right">
                    <asp:Button ID="edit" runat="server" class="btn btn-default" Text="Edit" style="padding-left:5px; padding-right:5px; margin-left:10px; margin-right:10px; width:70px" OnClick="edit_Click"/>
                    <asp:Button ID="startTask" runat="server" class="btn btn-primary" Text="Start Task" style="padding-left:5px; padding-right:5px; margin-left:10px; margin-right:10px" OnClick="startTask_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
