<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BuildingInspection.About" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:8%">
        <h2 style="text-decoration:underline"><%: Title %></h2>
        <h3>Autonomous Drone for Building Inspection</h3>
        <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/drone.jpg" style="width:200px; height:180px" />
                </td>
                <td>
                    <p>Our project will be a new building inspection method that uses an autonomous drone to do the building inspection instead of people. 
                        A dashboard will be used to view the informations and control the drones. Our objective is to provide the workers a safer and more 
                        time convenient way to conduct the building inspection so that they can perform their task easier and safer.</p>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <p>In today's society, the global economy is growing and the number of people is increasing rapidly, so mankind has begun to build 
                        high-rise buildings to allow more people to live in a certain area on the earth's surface.</p>
                    <p>In order to ensure the safety of the building, humans need to inspect the building from the inside and outside of the building, 
                        and it is difficult for them to do this.</p>
                    <p>According to research, inspectors need to use a lot of tools to conduct building inspections, which will incur great costs.</p>
                    <p>In addition, in order to better ensure safety, they must spend a lot of time and effort to check their tools. 
                        As a small conclusion, more advanced and effective inspection methods have become necessary.</p>
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Content/building.jpg" style="width:250px; height:250px" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Content/controldrone.png" style="width:250px; height:180px" />
                </td>
                <td>
                    <p>To solve this problem, we will use autonomous drones instead of inspectors to conduct building inspections.
                        Autonomous drones will be equipped with camera sensors and GPS to collect data on buildings from workers</p>
                    <p>Through this inspection method, the drone will fly to the construction site and fly around the building to take pictures of the building</p>
                </td>
            </tr>
        </table>
        
        
    </div>
</asp:Content>
