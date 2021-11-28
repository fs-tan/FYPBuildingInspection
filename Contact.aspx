<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BuildingInspection.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Autonomous Drone for Building Inspection</h3>
    <table>
        <tr>
            <td>
                <asp:Image class="img" ID="Image1" runat="server" ImageUrl="~/Content/ong.png" style="width:100%"/>
            </td>
            <td>
                <strong>Tutor : </strong> Dr. Ong Jia Hui<br />
                <strong>Address : </strong>Department of Computer Science And Embedded Systems, Faculty of Computing And Information Technology, TARUC<br />
                <strong>Phone : </strong> 018-269 8156<br />
                <strong>Email : </strong> ongjh@tarc.edu.my<br /><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Content/chew.png" style="width:100%"/>
            </td>
            <td>
                <strong>Team Member 1 : </strong> Chew Xi Cheng<br />
                <strong>Description : </strong>Final Year Student in TARUC Bachelor in Computer Science (Honours) in Software Engineering<br />
                <strong>Phone : </strong> 018-371 0293<br />
                <strong>Email : </strong> chewxc-wm18@student.tarc.edu.my<br /><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Content/fs.png" style="width:100%"/>
            </td>
            <td>
                <strong>Team Member 1 : </strong> Tan Hock Seng<br />
                <strong>Description : </strong> Final Year Student in TARUC Bachelor in Computer Science (Honours) in Software Engineering<br />
                <strong>Phone : </strong> 012-792 0973<br />
                <strong>Email : </strong> hstan-wm18@student.tarc.edu.my<br /><br />
            </td>
        </tr>
        

        
    </table>
</asp:Content>
