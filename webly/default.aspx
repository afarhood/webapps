<%@ Page Language="C#" EnableSessionState="False" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webly._default"  %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="shortcut icon" href="/assets/ico/favicon.ico">-->

    <title>Welcome!</title>



    <!-- Bootstrap core CSS -->


     <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
    <!-- Custom styles for this template -->
    <script src="js/jquery.min.js"></script>

      <link href="css/feedback.css" rel="stylesheet" type="text/css" />
      <script src="js/feedback.js" type="text/javascript"></script>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>

    </style>
  </head>

  <body>
      <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Menu</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">[ webly app ] : </a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#contact">Info</a></li>
            <li><a href="#contact">Contact us</a></li>
          </ul> 
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </div><!-- /.navbar -->
  <div class=" container" style="margin-top:60px">
  <h2><span class="glyphicon glyphicon-pencil"></span> messages</h2>last loaded: <asp:Label runat=server ID=lblLastloaded></asp:Label><br />
  <div id=tlist>

      </div>
    
      <p class="lead">more...</p>
      </div>
   <div id="feedback"></div>
   <script src="js/web.js" type="text/javascript"></script>
  </body>
</html>


