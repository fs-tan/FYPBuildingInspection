<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="BuildingInspection.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:10%; width:80%;" class="login">
        <strong>Change Password</strong>
        <br />
        <span>Enter Your New Password</span>
        <div class="form">
            <div class="form-row">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Password is require" ControlToValidate="Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" Text="Password" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="Password" type="password" class="form-control form-text" runat="server" required></asp:TextBox>
            </div>
            <div class="form-row">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="Confirm password is require" ControlToValidate="cPassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" Text="Confirm Password" class="form-label"></asp:Label>
                <span class="fas fa-lock" style="margin-top:5px"></span>
                <asp:TextBox ID="cPassword" type="password" class="form-control form-text" runat="server" required></asp:TextBox>
            </div>
            <asp:Label ID="passwordMessage" runat="server" Text=""></asp:Label>
            <br />
            <div class="form-row button-continue">
                <asp:Button ID="continue" runat="server" class="btn btn-primary centered btn-block" Text="Continue" style="" OnClick="continue_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
