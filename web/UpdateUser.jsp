<%@page import="java.sql.*"%>
<% 
String e=request.getParameter("email");
String n=request.getParameter("name");
String ph=request.getParameter("phone");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement UpdateUser=(PreparedStatement)db.getUpdateUser();
UpdateUser.setString(1, n);
UpdateUser.setString(2, ph);
UpdateUser.setString(3, e);
UpdateUser.executeUpdate();
PreparedStatement TakeUser=(PreparedStatement)db.getTakeUser();
TakeUser.setString(1, e);
ResultSet rs=TakeUser.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", e);
    session.setAttribute("rs", rs);
    session.setAttribute("msg","Values Updated");
    response.sendRedirect("UserProfile.jsp");
}
else
{
    session.setAttribute("msg","Update Not possible!!");
    response.sendRedirect("UserProfile.jsp");
}   	
%>