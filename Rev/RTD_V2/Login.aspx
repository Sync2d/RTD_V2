<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RTD_V2.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="icon" href="../../favicon.ico"/>

    <title>RTD Login</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="assets/css/signin.css" rel="stylesheet"/>

    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/respond.min.js" type="text/javascript"></script>
    <script src="assets/js/alert.js" type="text/javascript"></script>

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js" type="text/javascript"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js" type="text/javascript"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.min.js"></script>
      <script src=""assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="container">
      <form class="form-signin" role="form" runat="server">
        <div  class="panel panel-danger" align="center" style="width: 100%; height: 100%">
            <div class="panel-heading" >
                <h3 class="panel-title" ><b style="font-size: large;">R</b>egisto de <b style="font-size: large;" >T</b>rabalho <b style="font-size: large;" >D</b>iário</h3>
            </div>
            <div class="panel-body" align="center">
            <h2 class="form-signin-heading">Login</h2>
            <div class="row" id="divWarning" runat="server">
                <div class="alert alert-warning">
                    <%--<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>--%>
                    <a class="close" data-dismiss="alert">×</a> 
                    <span class="glyphicon glyphicon-record"></span> <strong>UPS!</strong>
                    <hr class="message-inner-separator" />
                    <p>
                        As credenciais inseridas não estão correctas ou utilizador não está registado!</p>
                </div>
            </div>
            <div class="row" id="divError" runat="server">
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <span class="glyphicon glyphicon-hand-right"></span> <strong>ERRO!</strong>
                    <hr class="message-inner-separator"/>
                    <p>
                        Acurreu um erro! Um Email já foi enviado para a DTI
                    </p>
                </div>
            </div>
            <asp:TextBox class="form-control" placeholder="Nome de Utilizador" runat="server" ID="txtUserName" required=""></asp:TextBox>
            <asp:TextBox class="form-control" placeholder="Palavra-Pass" runat="server" ID="txtPw" TextMode="Password" required=""></asp:TextBox>
            <asp:Button class="btn btn-lg btn-danger btn-block" runat="server" ID="btLogin" Text="Login" onclick="btLogin_Click"/>
            </div>
            <div class="panel-danger panel-footer" >
                <p><b>©</b> <script type="text/javascript">document.write(new Date().getFullYear());</script><b> E.A.D</b></p>
            </div>
          </div>
        </form>
    </div>
</body></html>