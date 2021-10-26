<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BuildingInspection.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="top:15%; left:40%">
        <table style="width:80%">
            <tr>
                <td rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="10em" ImageAlign="Middle"/>
                </td>
                <td style="width: 200px; text-align:left; padding-top: 0; padding-left:10px">
                    <asp:Label ID="Label3" runat="server" Text="Username  :" CssClass="Label"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="username" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 200px; text-align:left; padding-top: 0;">
                    <asp:Label ID="Label2" runat="server" Text="Password     :" CssClass="Label"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="password" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Change Image" PostBackUrl="~/ChangeProfilePicture.aspx"/>
                </td>
                <td>
                    <asp:Button ID="Button2" class="btn btn-default" runat="server" Text="Change Password" PostBackUrl="~/ForgotPasswordContinue.aspx"/>
                </td>
                <td>
                    <asp:Button ID="Button3" class="btn btn-default" runat="server" Text="Logout" PostBackUrl="~/Logout.aspx"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
