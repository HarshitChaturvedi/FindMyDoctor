<%@page import="java.sql.*"%>
<% 
String date=(String)request.getParameter("date");
String time=(String)request.getParameter("time");
String name=(String)request.getParameter("name");
String email=(String)request.getParameter("email");
String demail=(String)request.getParameter("demail");
String phone=(String)request.getParameter("phone");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement addAppointment=(PreparedStatement)db.getAddAppointment();
addAppointment.setString(1, email);
addAppointment.setString(2, demail);
addAppointment.setString(3, date);
addAppointment.setString(4, time);
addAppointment.setString(5, name);
addAppointment.setString(6, phone);
addAppointment.setString(7, "On");
addAppointment.executeUpdate();
    session.setAttribute("msg","Appointment is confirmed!!");
    response.sendRedirect("BookAppointment.jsp");
%>