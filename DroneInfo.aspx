<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneInfo.aspx.cs" Inherits="BuildingInspection.DroneInfo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        td{
            width: 80%; 
            text-align:left; 
            padding-top: 0;
            padding-left:10px;
            height:25px;
        }
    </style>
    <div class="login">
        <strong>Drone Info</strong>
        <br />
        <table style="width:150%; margin-left:-25%">
            <tr>
                <td style="width: 30%">
                    <asp:Label ID="Label3" runat="server" Text="Drone ID  :"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="dID" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align:left; padding-top: 0;">
                    <asp:Label ID="Label2" runat="server" Text="Drone Name     :"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="dName" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align:left; padding-top: 0;">
                    <asp:Label ID="Label" runat="server" Text="Drone Current Latitude    :"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="dLat" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align:left; padding-top: 0;">
                    <asp:Label ID="Label1" runat="server" Text="Drone Current Longtitude    :"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="dLng" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr><td colspan="2"><br /></td></tr>
            <tr>
                <td colspan="2" style="text-align:right">
                    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Edit Drone Info" PostBackUrl="~/ChangeDroneInfo.aspx"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
