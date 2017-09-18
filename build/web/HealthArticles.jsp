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
	<li class="active"><a href="#">Welcome -------</a></li>
	<li ><a href="home.jsp">Logout</a></li>
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
</nav><hr/>
		<div class="well" style="color: Purple" align="center"><p>Health Articles</p></div>
			<div class="row">
                            <div class="col-md-1"></div>
			<div class="col-md-5"  style="font-size:20px">
			<p>You have to take breath in from your nose and take it out from your mouth.</p>
			<h3>There is a very simple reason for this activity to happen. Since your nose has little hair to take care which prevent the dust particles from going into your body through nose.
			And, similarly they can prevent the internal small harmful particles to come out of your body, hence, it is always advised to inhale and exhale with nose and mouth respectively!!
			This article is written by Dr. Harshit Chaturvedi. If you found it helpful thank him and do not do anything else cause we haven't provided any facilities for that.</h3>
			</div>
			<div class="col-md-5"  style="font-size:20px">
			<p>It is always advisable to drink 30 minutes after you have food.</p>
			<h3>In this era of super busyness, people tend to forget to take care of their health. They dont much care about their diet and what to eat, drink, and in what amount.
			This articles is for all those who are busy enough to not to take care of yourselves. Please read till the end otherwise you ll regret it.</h3>
			<h3>There is an old saying, the things which get schedule are the things which get done. So schedule properly, go on a real doctor website and search for right diet plan or else 
			go to the gym and ask your trainer for help. This article was again written by a very famous doctor, Dr. Harshit Chaturvedi.
			Please take care that you don't scold him for not putting a real article inside the website.</h3>
			</div>
                            <div class="col-md-1"></div>       
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