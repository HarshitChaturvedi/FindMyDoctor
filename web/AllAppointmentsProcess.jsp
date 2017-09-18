<%@page import="java.sql.*"%>
<% 
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement allAppointments=(PreparedStatement)db.getAllAppoinments();
ResultSet drs=(ResultSet)session.getAttribute("rs");
allAppointments.setString(1,drs.getString(1));
ResultSet rs=allAppointments.executeQuery();
if(rs.next())
{
    session.setAttribute("aars", rs);
    response.sendRedirect("AllAppointments.jsp");
}
else
{
    session.setAttribute("msg","No Result Found!!");
    response.sendRedirect("SearchDoctor.jsp");
}   	
%>