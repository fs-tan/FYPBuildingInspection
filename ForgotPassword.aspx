<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="BuildingInspection.ForgotPassword" %>

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
<body class="ccy">
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
                    <li><a runat="server" href=""></a>hi</li>
                    <li><a runat="server" href=""></a>hello</li>
                    <li><a runat="server" href="~/Login">
                        <asp:Label ID="LoginName" runat="server" Text="Login"></asp:Label></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="forms">
        <div class="container">
            <!-- login -->
            <div class="login">
                <strong>Forgot Password</strong>
                <span>Enter your username</span>

                <form method="post" class="login-form" runat="server">

                    <div class="form">
                        <div class="form-row">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Username is require" ControlToValidate="username" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:Label ID="retreive" runat="server" Text="Username" class="form-label"></asp:Label>
                            <span class="fas fa-user" style="margin-top:7px"></span>
                            <asp:TextBox ID="userName" class = "form-control form-text" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-row button-continue">
                            <asp:Button ID="continue" runat="server" class="btn btn-primary centered btn-block" Text="Continue" style="" OnClick="continue_Click"/>
                        </div>
                    </div>
                    <asp:Label ID="usernameMessage" runat="server" Text=""></asp:Label>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
