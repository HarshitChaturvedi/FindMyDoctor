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
		<div class="well" style="color: Purple" align="center"><p>Health Tips</p></div>
			<div class="row">
                            <div class="col-md-1"></div>
			<div class="col-md-5"  style="font-size:20px">
			<p>Follow a Heart-Healthy Diet</p>
			<h3>here's an easy recipe if your goal is to keep away problems like heart disease and strokes.

                            # Eat more fruits and veggies.
                            # Choose whole grains. Try brown rice instead of white. Switch to whole wheat pasta.
                            # Choose lean proteins like poultry, fish, beans, and legumes.
                            # Cut down on processed foods, sugar, salt, and saturated fat.</h3>
			</div>
			<div class="col-md-5"  style="font-size:20px">
			<p>Exercise Every Day</p>
			<h3>The more active you are, the better, Meng says. Exercise boosts your heart health, builds muscle and bone strength, and wards off health problems.

Aim for 2 and a half hours of moderate activity, like brisk walking or dancing, every week. If you're OK with vigorous exercise, stick to 1 hour and 15 minutes a week of things like running or playing tennis. Add a couple of days of strength training, too.

If you're busy, try short bursts of activity throughout the day. Walk often. A good target is 10,000 steps a day. Take the stairs. Park your car far away from your destination.</h3>
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