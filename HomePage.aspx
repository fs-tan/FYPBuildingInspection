<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BuildingInspection.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="display ccy">
                <div id="backGround" style="background-image:url('../Content/drone.jpg'); margin-top:2%"></div>
                <div class="centered">
                    <h1 class="m-b-20"><strong>😍Welcome To😍
                        <br>
                         Autonomous Drone for Building Inspection  </strong></h1>
                    </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <br />
                    <h1 style="margin-left: 50px;">Welcome To <span>Autonomous Drone for Building Inspection 🏟</span></h1>
                    <h4 style="margin-left: 50px;">Little Story 🚁</h4>
                    <br />
                    <p align="Justify" style="margin-left: 50px;">
                        Our project will be a new building inspection method that uses an autonomous drone to do the building inspection instead of 
                        people. A dashboard will be used to view the informations and control the drones. Our objective is to provide the workers 
                        a safer and more time convenient way to conduct the building inspection so that they can perform their task easier and safer.
                    </p>
                </div>
                <div class="col-md-1">
                    <div class="vl" style="border-left: 6px solid green; height: 470px;"></div>
                </div>
                <div class="col-md-5">
                    <h1>What you can do with this dashboard 🤔</h1>
                    <br />
                    <br />
                    <a href="Profile.aspx" style="text-decoration:none; color:black; font-size:larger">View Your Profile</a><br />
                    <a href="DroneSchedule.aspx" style="text-decoration:none; color:black; font-size:larger">View Drone Schedule</a><br />
                    <a href="DroneSchedule(DateTime).aspx" style="text-decoration:none; color:black; font-size:larger">Add Drone Schedule</a><br />
                    <a href="Report.aspx" style="text-decoration:none; color:black; font-size:larger">View the Reports</a><br />
                    <a href="Weather.aspx" style="text-decoration:none; color:black; font-size:larger">Check the Weather</a><br />
                    <a href="Contact.aspx" style="text-decoration:none; color:black; font-size:larger">Contact Us</a><br />
                </div>
            </div>
</asp:Content>
