<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BuildingInspection.Login" %>

<!DOCTYPE html>

<head runat="server">
    <title></title>
    <!-- CSS Stylesheet -->
    <webopt:BundleReference runat="server" Path="~/Content/css"/>
    <!-- fontawesome v5 -->
    <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
    <style>
        #myVideo {
          position:fixed;
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
                    <li><a runat="server" href="~/Login">
                        <asp:Label ID="LoginName" runat="server" Text="Login"></asp:Label></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- login -->
    <div class="login">
        <h2>Welcome</h2>
        <h4>Sign in to your account</h4>

        <form method="post" runat="server">
            <div class="form">
                <div class="form-row">
                    <asp:Label ID="Label1" runat="server" Text="Username" class="form-label"></asp:Label>
                    <span class="fas fa-user"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Username is required" ControlToValidate="userName" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="userName" runat="server" class="form-control" required></asp:TextBox>
                </div>
                <br />
                <div class="form-row">
                    <asp:Label ID="Label2" runat="server" Text="Password" class="form-label"></asp:Label>
                    <span class="fas fa-lock"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password is require" ControlToValidate="userPassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="userPassword" runat="server" class="form-control" type="password" required></asp:TextBox>
                </div>
                <div class="form-row bottom">
                    <a href="ForgotPassword.aspx" class="forgot">Forgot password?</a>
                    <asp:Label ID="error" runat="server" Text="" Style="color: red"></asp:Label>
                </div>
                <div class="form-row button-login" style="margin-top: 24px;">
                    <asp:Button ID="loginBtn" runat="server" Text="Login"  class="btn btn-primary centered btn-block" OnClick="loginBtn_Click" />
                </div>
                <asp:ValidationSummary Style="text-align: left;padding-top: 24px;" ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Plese enter the require field" />
                <div style="margin-top: 45px;">
                    <a href="/Register.aspx">Don't have account?</a>
                </div>
            </div>

        </form>
    </div>


</body>
</html>
