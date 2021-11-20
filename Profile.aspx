<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BuildingInspection.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        td{
            width: 200px; 
            text-align:left; 
            padding-top: 0;
            padding-left:10px;
        }
    </style>
    <div style="margin-top:10%; width:80%; position:fixed; left:15%">
        <table style="width:80%">
            <tr>
                <td rowspan="3">
                    <asp:Image ID="Image1" runat="server" Height="10em" ImageAlign="Middle"/>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Username  :"></asp:Label>
                    <br />
                </td>
                <td colspan="2">
                    <asp:Label ID="username" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password     :"></asp:Label>
                    <br />
                </td>
                <td colspan="2">
                    <asp:Label ID="password" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label" runat="server" Text="Drone    :"></asp:Label>
                    <br />
                </td>
                <td colspan="2">
                    <asp:Label ID="drone" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr style="color:white"><td colspan="4"><br /></td></tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Change Image" PostBackUrl="~/ChangeProfilePicture.aspx"/>
                </td>
                <td>
                    <asp:Button ID="Button2" class="btn btn-default" runat="server" Text="Change Password" PostBackUrl="~/ChangePassword.aspx"/>
                </td>
                <td>
                    <asp:Button ID="Button3" class="btn btn-default" runat="server" Text="Drone Info" PostBackUrl="~/DroneInfo.aspx"/>
                </td>
                <td>
                    <asp:Button ID="Button4" class="btn btn-default" runat="server" Text="Logout" PostBackUrl="~/Logout.aspx"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
