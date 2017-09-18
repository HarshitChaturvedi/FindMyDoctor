<%@page import="java.sql.*"%>
<% 
String e=request.getParameter("email");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement deleteUser=(PreparedStatement)db.getdeleteUser();
deleteUser.setString(1, e);
deleteUser.executeUpdate();
PreparedStatement TakeUser=(PreparedStatement)db.getTakeUser();
TakeUser.setString(1, e);
ResultSet rs=TakeUser.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", e);
    session.setAttribute("rs", rs);
    session.setAttribute("msg","Account was not Deleted");
    response.sendRedirect("UserProfile.jsp");
}
else
{
    session.setAttribute("msg","Account Deleted !!");
    response.sendRedirect("LogoutUser.jsp");
}   	
%>