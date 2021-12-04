﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDrone.aspx.cs" Inherits="BuildingInspection.AddDrone" %>
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
    <div style="margin-top:10%; width:100%; max-width:400px;  position:fixed; left:40%"">
        <h2 style="text-align:center">Add New Drone</h2>
        <br />
        <h4 style="text-align:center">Enter Your New Drone Info</h4>
        <div class="form">
            <div class="form-row">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Drone Name is require" ControlToValidate="droneName" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" Text="Drone Name" class="form-label"></asp:Label>
                <asp:TextBox ID="droneName" class="form-control form-text" runat="server" required></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:Label ID="Label3" runat="server" Text="Your Drone Current Latitude" class="form-label"></asp:Label>
                <asp:TextBox ID="currentLat" class="form-control form-text" runat="server"></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:Label ID="Label1" runat="server" Text="Your Drone Current Longitude" class="form-label"></asp:Label>
                <asp:TextBox ID="currentLng" class="form-control form-text" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="droneNameMessage" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <div class="form-row button-continue">
                <asp:Button ID="continue" runat="server" class="btn btn-primary centered btn-block" Text="Continue" style="" OnClick="continue_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
