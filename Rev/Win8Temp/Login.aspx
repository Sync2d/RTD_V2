﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Win8Temp.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TESTE - Login</title>

    <link rel="stylesheet" href="css/style.default.css" type="text/css" />
    <link rel="stylesheet" href="css/style.shinyblue.css" type="text/css" />

    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-migrate-1.1.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.min.js"></script>
    <script type="text/javascript" src="js/modernizr.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript">
        raisePostBack = function () {
            __doPostBack("<%=btnLogin.ClientID%>", "");
        }
    </script>

</head>
<body class="loginpage">
    <div class="loginpanel">
        <div class="loginpanelinner">
            <div class="logo animate0 bounceIn"><img src="images/logo.png" alt="" /></div>
            <form id="login" runat="server" >
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="alert alert-error animate1 fadeIn" runat="server" id="Div1" visible="false">Username ou Password incorretos!</div>
                <div class="inputwrapper animate2 bounceIn">
                    <input type="text" name="username" id="txtusername" runat="server" placeholder="Username" />
                </div>
                <div class="inputwrapper animate2 bounceIn">
                    <input type="password" name="password" id="txtpassword" runat="server" placeholder="Password" />
                </div>
                <div class="inputwrapper animate2 bounceIn">
                    <button id="btnLogFake" OnClick="raisePostBack();">Save</button>
                    <asp:Button ID="btnLogin" runat="server" OnClick="btLogin_Click1" style="display:none" />
                </div>
                <%--<div class="inputwrapper animate4 bounceIn">
                    <label><input type="checkbox" class="remember" name="signin" /> Keep me sign in</label>
                </div>--%>
            </form>
        </div><!--loginpanelinner-->
    </div><!--loginpanel-->

    <div class="loginfooter">
        <p>&copy; 2014. All Rights Reserved.</p>
    </div>
</body>
</html>
