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
      <%
    String did=(String)session.getAttribute("uid");
    if(did==null)  
    {
        session.setAttribute("msg","Please Login First!!");
        response.sendRedirect("LoginRegisterDoctor.jsp");
    } else{
        ResultSet rs=(ResultSet)session.getAttribute("rs");
%> 
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
	<li class="active"><a href="#">Welcome: <%=rs.getString(3)%></a></li>
	<li ><a href="LogoutDoctor.jsp">Logout</a></li>
	<li ><a href="LoginRegisterUser.jsp">Login/Register(User)</a></li>
	<li ><a href="LoginRegisterDoctor.jsp">Login/Register(Doctor)</a></li>
	</ul></div>
	<div class="container-fluid">
	
   <ul class="nav navbar-nav">
      <li class="active"><a href="TodaysAppointmentProcess.jsp">Today's Appointments</a></li>
      <li><a href="AllAppointmentsProcess.jsp">All Appointments</a></li>
      <li><a href="DoctorProfile.jsp">Profile</a></li>
    </ul>
  </div>
</nav>
<hr/>
 
<div class="jumbotron">	
		<div class="well" align="center"  style="color: Purple"><h2>Doctor Profile</h2></div>
<%
	String m=(String)session.getAttribute("msg");
	if(m!=null){
%>
		<b><%= m%></b>
<%
            session.setAttribute("msg", null);
	}
%> 
			

	<form class="form-horizontal" method='post' enctype="multipart/form-data">
                <div class="row">
			<div class="col-md-2">
                            <img src="GetPhoto?email=<%=did%>" alt="MY pic" width="100"/>&nbsp
                            <input type="file" name="photo" class="btn btn-success"/>
			</div>
			<div class="col-md-5"  style="font-size:20px">
		<div class="form-group">
			<label for="name" class="control-label col-sm-4">Name:</label>
			<div class="col-sm-8">
                            <input type="text" class="form-control" name="name" value="<%=rs.getString(3)%>" required/>
		</div></div>
		<br/><br/>
		<div class="form-group">
			<label class="control-label col-sm-4">Phone:</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="phone" value="<%=rs.getString(5)%>" required/>
		</div></div>
			
			</div>
			<div class="col-md-5"  style="font-size:20px">
			
		<div class="form-group">
			<label for="name" class="control-label col-sm-4">Email :</label>
			<div class="col-sm-8">
			<input type="email" class="form-control" name="email" value="<%=rs.getString(1)%>" required/>
		</div></div>
		<br/><br/>
		<div class="form-group">
			<label class="control-label col-sm-4">Qualification:</label>
			<div class="col-sm-8">
			<select name="qual" class="form-control">
                                <option><%=rs.getString(6)%></option>
				<option>Phd</option>
				<option>MBBS</option>
				<option>-----</option>
				<option>------</option>
				<option>------</option>
			</select>
			</div>
		</div>
			</div>
            </div>
<div class="row">
	<div class="col-md-6">
	<div class="col-md-10">
		<div class="form-group">
			<label for="city" class="control-label col-sm-4">Experience(yrs):</label>
			<div class="col-sm-8">
			<select name="exp" class="form-control">
                                <option><%=rs.getString(7)%></option>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option> 
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option> 
				<option>10</option>
				<option>11</option>
				<option>12</option> 
			</select>
			</div>
		</div>
			<div class="form-group">
			<label for="name" class="control-label col-sm-4">Timings:</label>
		<label for="carName" class="control-label col-sm-4">Days :</label>
			<div class="col-sm-4">
			<select name="days1" class="form-control">
				<option><%=rs.getString(13)%></option>
				<option>Monday-Friday</option>
				<option>Saturday-Sunday</option>
			</select>
			</div>
			</div><br/><br/><br/>
			<div class="form-group">
			<label for="name" class="control-label col-sm-4"></label>
		<label for="carName" class="control-label col-sm-4">Days :</label>
			<div class="col-sm-4">
			<select name="days2" class="form-control">
				<option><%=rs.getString(14)%></option>
				<option>Monday-Friday</option>
				<option>Saturday-Sunday</option>
			</select>
			</div>
			</div>
			<br/>
			<br/>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-4">Clinic Address:</label>
			<label for="carName" class="control-label col-sm-4">State :</label>
			<div class="col-sm-4">
			<select name="state" class="form-control">
				<option><%=rs.getString(9)%></option>
				<option>Uttar Pardesh</option>
				<option>Maharashtra</option>
				<option>Delhi</option>
				<option>Karnataka</option>
				<option>Goa</option>
				<option>Harayana</option>
			</select>
			</div>
			</div>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-4">Address :</label>
			<div class="col-sm-8">
                            <input type="text" class="form-control" name="add" value="<%=rs.getString(11)%>,<%=rs.getString(10)%>,<%=rs.getString(9)%>"/>
		</div>
			</div>
		&nbsp&nbsp&nbsp	<div class="col-sm-offset-2 col-sm-4">
		<button type="submit" formaction='DeleteDoctorProcess.jsp' class="btn btn-danger"> Delete your Account </button>
		</div>
		</div>
		</div>
	<div class="col-md-6">
	<div class="col-md-10"><div class="form-group">
			<label for="carnumber" class="control-label col-sm-3">Fee :</label>
			<div class="col-sm-3">
                            <input type="text" class="form-control" name="Fee" value="<%=rs.getString(7)%>"/>
		</div><label for="carnumber" class="control-label col-sm-3">Speciality:</label>
			<div class="col-sm-3">
			<select name="speciality" class="form-control">
				<option><%=rs.getString(4)%></option>
				<option>Neurosurgery</option>
				<option>Acupuncture</option>
				<option>Cardiac Surgery</option>
				<option>Dentistry</option>
				<option>Ear, Nose, and Throat</option>
				<option>Gynecologic Oncology</option>
				<option>Plastic Surgery</option>
			</select>
		</div>
		</div>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-3">1st Shift :</label>
			<div class="col-sm-4">
			<select name="d1s11" class="form-control">
				<option><%=rs.getString(15)%></option>
				<option>9:30am</option>
				<option>10:00am</option>
				<option>10:30am</option>
				<option>11:00am</option>
				<option>11:30am</option>
			</select>
			</div>
			
			<label for="carName" class="control-label col-sm-1">To</label>
			<div class="col-sm-4">
			<select name="d1s12" class="form-control">
				<option><%=rs.getString(16)%></option>
				<option>12:30pm</option>
				<option>01:00pm</option>
				<option>01:30pm</option>
				<option>02:00pm</option>
				<option>02:30pm</option>
			</select>
			</div>
		</div>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-3">2nd Shift :</label>
			<div class="col-sm-4">
			<select name="d1s21" class="form-control">
				<option><%=rs.getString(17)%></option>
				<option>05:00pm</option>
				<option>05:30pm</option>
				<option>06:00pm</option>
				<option>06:30pm</option>
			</select>
			</div>
			
			<label for="carName" class="control-label col-sm-1">To</label>
			<div class="col-sm-4">
			<select name="d1s22" class="form-control">
				<option><%=rs.getString(18)%></option>
				<option>08:00pm</option>
				<option>08:30pm</option>
				<option>09:00pm</option>
				<option>09:30pm</option>
			</select>
			</div>
		</div>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-3">1st Shift :</label>
			<div class="col-sm-4">
			<select name="d2s11" class="form-control">
				<option><%=rs.getString(19)%></option>
				<option>9:30am</option>
				<option>10:00am</option>
				<option>10:30am</option>
				<option>11:00am</option>
				<option>11:30am</option>
			</select>
			</div>
			
			<label for="carName" class="control-label col-sm-1">To</label>
			<div class="col-sm-4">
			<select name="d2s12" class="form-control">
				<option><%=rs.getString(20)%></option>
				<option>12:30pm</option>
				<option>01:00pm</option>
				<option>01:30pm</option>
				<option>02:00pm</option>
				<option>02:30pm</option>
			</select>
			</div>
		</div>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-3">2nd Shift :</label>
			<div class="col-sm-4">
			<select name="d2s21" class="form-control">
				<option><%=rs.getString(21)%></option>
				<option>05:00pm</option>
				<option>05:30pm</option>
				<option>06:00pm</option>
				<option>06:30pm</option>
			</select>
			</div>
			
			<label for="carName" class="control-label col-sm-1">To</label>
			<div class="col-sm-4">
			<select name="d2s22" class="form-control">
				<option><%=rs.getString(22)%></option>
				<option>08:00pm</option>
				<option>08:30pm</option>
				<option>09:00pm</option>
				<option>09:30pm</option>
			</select>
			</div>
		</div>
			<div class="form-group">
			<label for="carName" class="control-label col-sm-3">City :</label>
			<div class="col-sm-4">
			<select name="city" class="form-control">
				<option><%=rs.getString(10)%></option>
				<option>Agra</option>
				<option>Allahabad</option>
				<option>Lucknow</option>
				<option>Jaipur</option>
				<option>Haridwar</option>
				<option>Rishikesh</option>
				<option>Shimla</option>
				<option>Ahmedabad</option>
				<option>Gwalior</option>
			</select>
			</div>
			</div><br/><br/><br/>
		<div class="col-sm-offset-2 col-sm-2">
		<button type="submit" formaction='ChangePasswordDoctor.jsp' class="btn btn-success"> Change Password </button>
		</div>
                &nbsp&nbsp
		<div class="col-sm-offset-2 col-sm-2">
		<button type="submit" formaction='updatedoc' class="btn btn-info"> Update </button>
                </div>
	</div>
	</div>
	</div>
	</form>
	</div><br/>
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