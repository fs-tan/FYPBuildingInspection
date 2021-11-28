<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BuildingInspection.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS Stylesheet -->
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <!-- fontawesome v5 -->
    <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
    <style>
        #myVideo {
          position:fixed;
          left:0;
          top:0;
          width:100%;
          height:100%;
        }
    </style>
</head>
<body class="">
    <video autoplay muted loop id="myVideo">
        <source src="Content/background.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
    </video>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" runat="server" href="~/HomePage">Autonomous Drone for Building Inspection</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav" style="float: right">
                    <li><asp:HyperLink runat="server" NavigateUrl="~/Login.aspx" ID="login" Text="Login"></asp:HyperLink></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="register" style="margin-top: 100px;">
        <strong>Create account!</strong>
        <form id="form1" runat="server">
            <div class="form">
                <div class="form-row">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Name is require" ControlToValidate="userName" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:Label ID="Label5" runat="server" Text="Name" class="form-label"></asp:Label>
                    <span class="fas fa-user" style="margin-top:5px"></span>
                    <asp:TextBox ID="userName" class="form-control form-text" runat="server" required ></asp:TextBox>
                </div>
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
                <asp:Label ID="usernameMessage" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="passwordMessage" runat="server" Text=""></asp:Label>
                <div class="form-row button-login">
                    <asp:Button ID="registerBtn" runat="server" Text="Create" class="btn btn-primary centered btn-block" Style="margin-top:12px;" OnClick="registerBtn_Click" />
                </div>
            </div>
            <asp:ValidationSummary ID="ValidationSummary5" runat="server" ForeColor="Red" HeaderText="Plese enter the require field" />
        </form>
    </div>
</body>
</html>
