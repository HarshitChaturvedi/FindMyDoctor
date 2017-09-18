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
	<li class="active" ><a href="LogoutUser.jsp">Logout</a></li>
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
</nav>
<hr/>
<div class="row">
	<div class="col-sm-6">
	<div class="well" style="color: Purple"> <h2>New User</h2></div>		
<%
	String m=(String)session.getAttribute("msg");
	if(m!=null){
%>
		<b><%= m%></b>
<%
            session.setAttribute("msg", null);
	}
%> 
            <form action='loginRegister' class="form-horizontal">
                    <div class="form-group">
                            <label for="name" class="control-label col-sm-2">Name:</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control" name="name"/>
                    </div></div>
                    <div class="form-group">
                            <label for="email" class="control-label col-sm-2">Email:</label>
                            <div class="col-sm-8">
                            <input type="email" class="form-control" name="email"/>
                            </div>
                    </div>
                    <div class="form-group">
                            <label for="phone" class="control-label col-sm-2">Phone:</label>
                            <div class="col-sm-8">
                            <input type="text" class="form-control" name="phone"/>
                    </div>
                    </div>
                    <div class="form-group">
                            <label for="phone" class="control-label col-sm-2">Password:</label>
                            <div class="col-sm-8">
                            <input type="password" class="form-control" name="pass"/>
                    </div>
                    </div>
                    <div class="col-sm-offset-2 col-sm-2">
                    <button type="submit" class="btn btn-default">  Register </button>
                    </div>
                    <div class="col-sm-offset-2 col-sm-2">
                    <button type="reset" class="btn btn-default">  Reset </button>
                    </div>
            </form><hr/><br/><br/><br/>
	</div>
	
	<div class="col-sm-6">
		<div class="well" style="color: Purple"><h2>User Login</h2></div>
	<form action='LoginProcessUser.jsp' class="form-horizontal">
		<div class="form-group">
			<label for="email" class="control-label col-sm-2">Email: </label>
			<div class="col-sm-8">
			<input type="email" class="form-control" name="email"/>
		</div></div>
		<div class="form-group">
			<label for="pwd" class="control-label col-sm-2">Password: </label>
			<div class="col-sm-8">
			<input type="password" class="form-control" name="pass"/>
		</div>
		</div>
		
		<div class="col-sm-offset-2 col-sm-2">
		<button type="submit" class="btn btn-default">  Sign In </button>
		</div>
		<div class="col-sm-offset-2 col-sm-5">
		<a href="ForgotPassUser.jsp"> Forgot Password ? </a>
		</div>
	</form><hr/><br/><br/><br/>
	</div>
</div> 
  <!--Fixed Footer-->
  <div class="navbar navbar-inverse navbar-bottom">
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