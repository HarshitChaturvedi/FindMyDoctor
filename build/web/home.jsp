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
	<a class="navbar-brand" href="home.jsp"><p>Find My Doctor</p></a>
	<div class="navbar-collapse collapse">
	<ul class="nav navbar-nav navbar-right">
	<li class="active"><a href="home.jsp">Logout</a></li>
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
<div class="jumbotron">
		<div class="well" align="center"  style="color: Purple"><h2>Search Doctor</h2></div>			
<%
	String m=(String)session.getAttribute("msg");
	if(m!=null){
%>
		<b><%= m%></b>
<%
            session.setAttribute("msg", null);
	}
%> 
        <form action='SearchDoctorProcess.jsp' method='get'> 
                        <div class="row">
			<div class="col-md-2">
			<a href="#">
			<img src="img/doc1.jpg" alt="MY pic" width="100"/></a>
			</div>
			<div class="col-md-4"  style="font-size:20px">
			<label for="carName" class="control-label col-sm-5">Doctor Name:</label>
			<div class="col-sm-7">
			<input type="text" class="form-control" name="name"/>
		</div>
			<br/><br/>
		<div class="form-group">
			<label for="StateName" class="control-label col-sm-4">State:</label>
			
			<div class="col-sm-8">
			<select name="state" class="form-control">
				<option>UttarPradesh</option>
				<option>Maharashtra</option>
				<option>goa</option>
				<option>Madhya Pradesh</option>
				<option>Noida</option>
				<option>Delhi</option>
				<option>Harayana</option>
			</select>
			</div>
		</div>
			</div>
			<div class="col-md-4"  style="font-size:20px">
			<label for="carName" class="control-label col-sm-4">Speciality:</label>
			<div class="col-sm-8">
			<select name="speciality" class="form-control">
				<option>Neurosurgery</option>
				<option>Acupuncture</option>
				<option>Cardiac Surgery</option>
				<option>Dentistry</option>
				<option>Ear, Nose, and Throat</option>
				<option>Gynecologic Oncology</option>
				<option>Plastic Surgery</option>
			</select><br/>
			</div>
			<div class="row">
			<div class="col-sm-4">
			<label class="control-label col-sm-4">City:</label>
			</div>
			<div class="col-sm-8">
			<select name="city" class="form-control">
				<option>Agra</option>
				<option>Noida</option>
				<option>Delhi</option>
				<option>Gurugram</option>
				<option>Meerut</option>
				<option>Mathura</option>
				<option>Lucknow</option>
			</select>
			</div>
			</div>
			</div>
			<div class="col-md-2">
			<button type="Submit" class="btn btn-success"><b>Find now</b></button>
			</div>
		</div>
            </form>
		</div>
	<div class="alert alert-info" align="center"><p>Overview of Book My Doctor</p></div>
	<div class="row">
	<div class="col-md-2">
				<img src="img/doc2.jpg" width="100" height="100">
				</div>
	<div class="col-md-2">
				<img src="img/doc3.jpg" width="100" height="100">
				</div>
	<div class="col-md-2">
				<img src="img/doc4.jpeg" width="100" height="100">
				</div>
	<div class="col-md-2">
				<img src="img/doc5.jpeg" width="100" height="100">
				</div>
	<div class="col-md-2" >
				<img src="img/doc6.jpeg" width="100" height="100">
				</div>
	<div class="col-md-2">
				<img src="img/doc7.jpg" width="100" height="100">
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