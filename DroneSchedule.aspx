<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneSchedule.aspx.cs" Inherits="BuildingInspection.DroneSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                        <td style="margin-top:5px; padding-top:5px; padding-left:10px; vertical-align:top; text-align:left">
                            Enter Location:
                        </td>
                        <td style="margin-top:5px; padding-top:5px; padding-left:10px; vertical-align:top; text-align:left">
                            <div class="form">
                                <div class="form-row">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Latitude is required" ControlToValidate="lat" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:Label ID="labelLat" runat="server" Text="Latitude" class="form-label"></asp:Label>
                                    <asp:TextBox ID="lat" class="form-control form-text" runat="server" required></asp:TextBox>
                                </div>
                                <div class="form-row">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Longtitude is required" ControlToValidate="lng" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:Label ID="labelLng" runat="server" Text="Longtitude" class="form-label"></asp:Label>
                                    <asp:TextBox ID="lng" class="form-control form-text" runat="server" required></asp:TextBox>
                                </div>
                                <asp:Label ID="latMessage" runat="server" Text=""></asp:Label>
                                <br />
                                <asp:Label ID="lngMessage" runat="server" Text=""></asp:Label>
                                <div class="form-row button-login">
                                    <asp:Button ID="submitBtn" runat="server" Text="Create" class="btn btn-primary centered btn-block" Style="margin-top: 12px;" OnClick="submitBtn_Click" />
                                </div>
                            </div>
                            <br />
                            <br />
                            <asp:ValidationSummary ID="ValidationSummaryLocation" runat="server" ForeColor="Red" HeaderText="Plese enter the require field" />
                        </td>
                    </tr>
                </table>

                Location Entered:
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="coordinatesID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="coordinatesID" HeaderText="coordinatesID" InsertVisible="False" ReadOnly="True" SortExpression="coordinatesID" />
                        <asp:BoundField DataField="latitude" HeaderText="latitude" SortExpression="latitude" />
                        <asp:BoundField DataField="longitude" HeaderText="longitude" SortExpression="longitude" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Coordinate] WHERE [coordinatesID] = @coordinatesID" InsertCommand="INSERT INTO [Coordinate] ([latitude], [longitude]) VALUES (@latitude, @longitude)" SelectCommand="SELECT * FROM [Coordinate]" UpdateCommand="UPDATE [Coordinate] SET [latitude] = @latitude, [longitude] = @longitude WHERE [coordinatesID] = @coordinatesID">
                    <DeleteParameters>
                        <asp:Parameter Name="coordinatesID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="latitude" Type="String" />
                        <asp:Parameter Name="longitude" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="latitude" Type="String" />
                        <asp:Parameter Name="longitude" Type="String" />
                        <asp:Parameter Name="coordinatesID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
