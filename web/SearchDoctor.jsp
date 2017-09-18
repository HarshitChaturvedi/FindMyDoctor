<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    String uid=(String)session.getAttribute("uid");
    if(uid==null)  
    {
        session.setAttribute("msg","Please Login First!!");
        response.sendRedirect("UserProfile.jsp");
    } 
    else
    {
        ResultSet rs=(ResultSet)session.getAttribute("srs");
        int count=0;
%> 

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
      <li><a href="HealthTips.jsp">Health Tips</a></li>    </ul>
  </div>
        </div>
</nav>
      <hr/>   
    <div class="well" style="color: Purple"><h2>Search for: <%=rs.getString(4)%> in <%=rs.getString(10)%>,<%=rs.getString(9)%></h2></div>
    <%
        do
        {
        %>		
      <div class="jumbotron">
                <div class="row">
			<div class="col-md-2">
			<a href="#">
			<img src="GetPhoto?email=<%=rs.getString(1)%>" alt="MY pic" width="100"/></a>
			</div>
			<div class="col-md-5"  style="font-size:20px">
			<b>Name: <%=rs.getString(3)%></b><br/>
			<b><%=rs.getString(4)%>, <%=rs.getString(6)%></b><br/>
			<b><%=rs.getString(7)%> years experience</b><br/>
			<b>Fee: <%=rs.getString(8)%></b><br/><br/>
			</div>
			<div class="col-md-5"  style="font-size:20px">
			<b>Address:<%=rs.getString(11)%>,<%=rs.getString(10)%>,<%=rs.getString(9)%></b><br/>
			<b>Timings: <%=rs.getString(13)%> :(<%=rs.getString(15)%>-<%=rs.getString(16)%>)</b><br/>
                        <b>(<%=rs.getString(17)%>-<%=rs.getString(18)%>)</b><br/>
			<b> <%=rs.getString(14)%> :(<%=rs.getString(19)%>-<%=rs.getString(20)%>)</b><br/>
                        <b>(<%=rs.getString(21)%>-<%=rs.getString(22)%>)</b><br/>  
                         <form action='BookAppointmentProcess.jsp' method='post'>
                             <input type='hidden' name="uid" value='<%=rs.getString(1)%>'>
                        <button type="Submit" class="btn btn-success"><b>Book</b></button>
			</form></div>
			</div>
		</div>
        <%count++;
        }while(rs.next());
        %>
    <div class="well" style="color: Purple"><h2><%=count%> found</h2></div>
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
<%
    }
%>