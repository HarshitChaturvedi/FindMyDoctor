<%@page import="java.sql.*"%>
<% 
String u=(String)request.getParameter("email");
String p=(String)request.getParameter("pass");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement checkDoctor=(PreparedStatement)db.getCheckDoctor();
checkDoctor.setString(1, u);
checkDoctor.setString(2, p);
ResultSet rs=checkDoctor.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", u);
    session.setAttribute("rs", rs);
    response.sendRedirect("DoctorProfile.jsp");
}
else
{
    session.setAttribute("msg","Wrong Entries!!");
    response.sendRedirect("LoginRegisterDoctor.jsp");
}   	
%>