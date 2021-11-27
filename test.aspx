<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="BuildingInspection.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblTime" runat="server" />
            <br />
            <br />
            <asp:Timer ID="Timer1" runat="server" OnTick="TimerTick" Interval="1000" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
