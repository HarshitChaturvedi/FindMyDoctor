<%@page import="java.sql.*"%>
<% 
String n=(String)request.getParameter("uid");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement takeDoctor=(PreparedStatement)db.getTakeDoctor();
takeDoctor.setString(1, n);
ResultSet rs=takeDoctor.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", rs.getString(1));
    session.setAttribute("srs", rs);
    response.sendRedirect("BookAppointment.jsp");
}
else
{
    session.setAttribute("msg","No Result Found!!");
    response.sendRedirect("SearchDoctor.jsp");
}   	
%>