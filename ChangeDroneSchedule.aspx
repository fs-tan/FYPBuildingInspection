<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeDroneSchedule.aspx.cs" Inherits="BuildingInspection.ChangeDroneSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #myVideo {
          position:fixed;
          left:0;
          top:0;
          width:100%;
          height:100%;
        }
    </style>
    <video autoplay muted loop id="myVideo">
        <source src="Content/background.mp4" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
    <div style="margin-top:0%;" class="login">
        <strong>Modify Drone Schedule</strong>
        <span>Enter New Drone Schedule Info</span>
        <div class="form">
            <div class="form-row">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Schedule Name is require" ControlToValidate="scheduleName" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" Text="Schedule Name" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="scheduleName" class="form-control form-text" runat="server" required></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="Status is require" ControlToValidate="scheduleStatus" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" Text="Schedule Status" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="scheduleStatus" class="form-control form-text" runat="server" required></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:Label ID="Label1" runat="server" Text="Flight Info ID" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="flightInfo" class="form-control form-text" runat="server" disabled></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:Label ID="Label4" runat="server" Text="Result ID" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="resultID" class="form-control form-text" runat="server" disabled></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:Label ID="Label5" runat="server" Text="User ID" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="userID" class="form-control form-text" runat="server" disabled></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:Label ID="Label6" runat="server" Text="Drone ID" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="droneID" class="form-control form-text" runat="server" disabled></asp:TextBox>
            </div>
            <br />
            <div class="form-row button-continue">
                <asp:Button ID="continue" runat="server" class="btn btn-primary centered btn-block" Text="Continue" style="" OnClick="continue_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
