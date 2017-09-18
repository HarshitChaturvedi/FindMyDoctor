<%@page import="java.sql.*"%>
<% 
String e=request.getParameter("email");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement deleteDoctor=(PreparedStatement)db.getdeleteDoctor();
deleteDoctor.setString(1, e);
deleteDoctor.executeUpdate();
PreparedStatement TakeDoctor=(PreparedStatement)db.getTakeDoctor();
TakeDoctor.setString(1, e);
ResultSet rs=TakeDoctor.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", e);
    session.setAttribute("rs", rs);
    session.setAttribute("msg","Account was not Deleted");
    response.sendRedirect("DoctorProfile.jsp");
}
else
{
    session.setAttribute("msg","Account Deleted !!");
    response.sendRedirect("DoctorProfile.jsp");
}   	
%>