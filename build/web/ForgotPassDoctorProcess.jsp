<%@page import="java.sql.*"%>
<% 
String e=request.getParameter("email");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement TakeDoctor=(PreparedStatement)db.getTakeDoctor();
TakeDoctor.setString(1, e);
ResultSet rs=TakeDoctor.executeQuery();
if(rs.next())
{
    session.setAttribute("pass", rs.getString(2));
    session.setAttribute("msg","Password Found!!");
    //response.sendRedirect("ForgotPassDoctor.jsp");
}
else
{
    session.setAttribute("msg","Password Not Found");
   // response.sendRedirect("ForgotPassDoctor.jsp");
}   	
%>
<%@include file="ForgotPassDoctor.jsp"%>