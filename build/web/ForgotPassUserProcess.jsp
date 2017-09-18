<%@page import="java.sql.*"%>
<% 
String e=request.getParameter("email");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement TakeUser=(PreparedStatement)db.getTakeUser();
TakeUser.setString(1, e);
ResultSet rs=TakeUser.executeQuery();
if(rs.next())
{
    session.setAttribute("pass", rs.getString(4));
    session.setAttribute("msg","Password Found!!");
}
else
{
    session.setAttribute("msg","Password Not Found");
}   	
%>
<%@include file="ForgotPassUser.jsp"%>