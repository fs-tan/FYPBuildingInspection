<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneSchedule.aspx.cs" Inherits="BuildingInspection.DroneSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <iframe src="https://www.google.com/maps?q=3.215375418994224,101.72771342603022&z=15&output=embed" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

    <script>
    google.maps.event.addListener(map, 'click', function(event) {
       placeMarker(event.latLng);
    });

    function placeMarker(location) {
        var marker = new google.maps.Marker({
            position: location, 
            map: map
        });
    }
    </script>
</asp:Content>
