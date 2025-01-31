﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_Default2" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Admin Login AUTO EMPIRE</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body class="login-img3-body">

  <div class="container">

    <form class="login-form" runat="server">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <%--<input type="text" class="form-control" placeholder="Username" autofocus>--%>
            <asp:TextBox ID="txtaname" runat="server" class="form-control" placeholder="Admin name" autofocus></asp:TextBox>
                               
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Enter your name" ForeColor="Red" ControlToValidate="txtaname"></asp:RequiredFieldValidator>
                   
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <%--<input type="password" class="form-control" placeholder="Password">--%>
            <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                         
        </div>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter password" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                        
        <label class="checkbox">
                
                
            </label>
        <%--<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>--%>
          <asp:Button ID="btnlogin" runat="server" Text="Log in" 
              class="btn btn-primary btn-lg btn-block" onclick="btnlogin_Click"/>
        <%--<button class="btn btn-info btn-lg btn-block" type="submit">Signup</button>--%>
      </div>
    </form>
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
                  </div>
    </div>
  </div>


</body>

</html>
