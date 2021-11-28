<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneSchedule.aspx.cs" Inherits="BuildingInspection.DroneSchedule1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="margin-left:10%; margin-top:8%; margin-bottom:0px">Drone Schedules</h3>
    <asp:Button ID="newSchedule" runat="server" Text="Add New Schedule" style="margin-left:85%;" OnClick="newSchedule_Click" class="btn btn-default"/>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="scheduleID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="width:100%; margin-top:10px;">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" OnClick="Edit_OnClick"  CommandArgument='<%#Eval("scheduleID")%>'></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select" OnClick="Select_OnClick" CommandArgument='<%#Eval("scheduleID") %>'></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?'); "></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="scheduleID" HeaderText="Schedule ID" InsertVisible="False" ReadOnly="True" SortExpression="scheduleID" />
            <asp:BoundField DataField="scheduleName" HeaderText="Schedule Name" SortExpression="scheduleName" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="flightInfoID" HeaderText="Flight Info ID" SortExpression="flightInfoID" />
            <asp:BoundField DataField="resultID" HeaderText="Result ID" SortExpression="resultID" />
            <asp:BoundField DataField="userID" HeaderText="User ID" SortExpression="userID" />
            <asp:BoundField DataField="droneID" HeaderText="User's Drone ID" SortExpression="droneID" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FlightSchedule]" DeleteCommand="DELETE FROM [FlightSchedule] WHERE [scheduleID] = @scheduleID" InsertCommand="INSERT INTO [FlightSchedule] ([scheduleName], [status], [flightInfoID], [resultID], [userID], [droneID]) VALUES (@scheduleName, @status, @flightInfoID, @resultID, @userID, @droneID)" UpdateCommand="UPDATE [FlightSchedule] SET [scheduleName] = @scheduleName, [status] = @status, [flightInfoID] = @flightInfoID, [resultID] = @resultID, [userID] = @userID, [droneID] = @droneID WHERE [scheduleID] = @scheduleID">
        <DeleteParameters>
            <asp:Parameter Name="scheduleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="scheduleName" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="flightInfoID" Type="Int32" />
            <asp:Parameter Name="resultID" Type="Int32" />
            <asp:Parameter Name="userID" Type="Int32" />
            <asp:Parameter Name="droneID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="scheduleName" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="flightInfoID" Type="Int32" />
            <asp:Parameter Name="resultID" Type="Int32" />
            <asp:Parameter Name="userID" Type="Int32" />
            <asp:Parameter Name="droneID" Type="Int32" />
            <asp:Parameter Name="scheduleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
