<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Find My Doctor</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Bahiana|Barrio" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	<span class="sr-only">toggle Navigation</span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="#"><p>Find My Doctor</p></a>
	<div class="navbar-collapse collapse">
	<ul class="nav navbar-nav navbar-right">
	<li class="active"><a href="#">Welcome : ------------</a></li>
	<li ><a href="LogoutUser.jsp">Logout</a></li>
	<li ><a href="LoginRegisterUser.jsp">Login/Register(User)</a></li>
	<li ><a href="LoginRegisterDoctor.jsp">Login/Register(Doctor)</a></li>
	</ul></div>
	<div class="container-fluid">
   <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Search Doctor</a></li>
      <li><a href="HealthArticles.jsp">Health Articles</a></li>
      <li><a href="HealthTips.jsp">Health Tips</a></li>
    </ul>
  </div>
</nav><br/><br/>
            <div class="well" align="center"  style="color: Purple"><h2>Forgot Password</h2></div>
<%
	String m=(String)session.getAttribute("msg");
	if(m!=null){
%>
		<b><%= m%></b>
<%
            session.setAttribute("msg", null);
	}
%>
            <form class="form-horizontal">
		<div class="form-group">
                    <label for="name" class="control-label col-sm-2">Email id:</label>
                    <div class="col-sm-8">
                    <input type="email" class="form-control" name="email" value=""/>
		</div>
                </div>
		<div class="col-sm-offset-2 col-sm-8">
		<button type="submit" formaction="ForgotPassUserProcess.jsp" class="btn btn-success">  Submit</button>&nbsp&nbsp
		</div><br/><br/><br/>
		</form><br/>
			<label for="name" class="control-label col-sm-2">Password :<%
	String pass=(String)session.getAttribute("pass");
	if(pass!=null){
%>
		<b><%= pass%></b>
<%
            session.setAttribute("pass", null);
	}
%></label>
			<button type="submit" formaction="UserProfile.jsp" class="btn btn-info"> Back</button>
  <!--Fixed Footer-->
  <div class="navbar navbar-inverse navbar-fixed-bottom">
	<div class="container">
		<div class="navbar-text pull-left">
			<p>Design & Developed by: INCAPP</p>
		</div>
	</div>
  </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>