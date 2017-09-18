<%@page import="java.sql.*"%>
<% 
String n=(String)request.getParameter("name");
String st=(String)request.getParameter("state");
String sp=(String)request.getParameter("speciality");
String c=(String)request.getParameter("city");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement findDoctor=(PreparedStatement)db.getFindDoctor();
findDoctor.setString(1, n);
findDoctor.setString(2, sp);
findDoctor.setString(3, st);
findDoctor.setString(4, c);
ResultSet rs=findDoctor.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", rs.getString(1));
    session.setAttribute("srs", rs);
    response.sendRedirect("SearchDoctor.jsp");
}
else
{
    session.setAttribute("msg","No Result Found!!");
    response.sendRedirect("home.jsp");
}   	
%>