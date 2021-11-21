<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneSchedule(TaskLocation).aspx.cs" Inherits="BuildingInspection.DroneSchedule_TaskLocation_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
    </script>
    <style>
table, th, td {
  border: 1px solid black;
}
</style>
    <table style="margin-top:15px; width:100%;">
        <tr>
            <td style="width:40%">
                <iframe src="https://www.google.com/maps?q=3.215375418994224,101.72771342603022&z=15&output=embed" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                <script>
                    google.maps.event.addListener(map, 'click', function (event) {
                        placeMarker(event.latLng);
                    });
                    function placeMarker(location) {
                        var marker = new google.maps.Marker({
                            position: location,
                            map: map
                        });
                    }
                </script>

                <%--<div id="googleMap" style="width:100%;height:400px;"></div>
                <script>
                    function myMap() {
                        var location = { lat: -25.363, lng: 131.044 };
                        var map = new google.maps.Map(document.getElementById("googleMap"), {
                            zoom: 4,
                            center: location
                        });
                        var marker = new google.maps.marker({
                            position: location,
                            map: map
                        });
                    }
                </script>
                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAvGwzLP0z8ie-fDRg4zO8YsL5QF_Gz5Wc&callback=myMap"></script>--%>
            </td>

            <td style="margin-top:5px; padding-top:5px; padding-left:10px; vertical-align:top; text-align:left; width:60%">
                <table style="width:100%; height:200px">
                    <tr>
                        <td style="margin-top:5px; padding-top:5px; padding-left:10px; vertical-align:top; text-align:left; width:200px;">
                            Enter Location:
                        </td>
                        <td style="margin-top:5px; padding-top:5px; padding-left:10px; vertical-align:top; text-align:left; padding-right:10px;">
                            <div class="form">
                                <div class="form-row">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Latitude is required" ControlToValidate="lat" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:Label ID="labelLat" runat="server" Text="Latitude" class="form-label"></asp:Label>
                                    <asp:TextBox ID="lat" class="form-control form-text" runat="server" required></asp:TextBox>
                                </div>
                                <asp:Label ID="latMessage" runat="server" Text=""></asp:Label>
                                <div class="form-row">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Longtitude is required" ControlToValidate="lng" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:Label ID="labelLng" runat="server" Text="Longtitude" class="form-label"></asp:Label>
                                    <asp:TextBox ID="lng" class="form-control form-text" runat="server" required></asp:TextBox>
                                </div>
                                <asp:Label ID="lngMessage" runat="server" Text=""></asp:Label>
                            </div>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding-left:15px; padding-right:10px; padding-bottom:10px; background-color:none">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Schedule name is required" ControlToValidate="scheduleName" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <h5>Before proceed, please provide a name for this schedule : </h5>
                            <asp:TextBox ID="scheduleName" class="form-control form-text" runat="server" required></asp:TextBox>
                            <asp:Label ID="scheduleNameMessage" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="ValidationSummaryLocation" runat="server" ForeColor="Red" HeaderText="Plese enter the require field" />
                <br />
                <br />

                <div class="form-row button-login">
                    <asp:Button ID="submitBtn" runat="server" Text="Create" class="btn btn-primary centered btn-block" Style="margin-top: 12px;" OnClick="submitBtn_Click" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
