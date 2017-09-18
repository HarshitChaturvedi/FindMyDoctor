<%@page import="java.sql.*"%>
<% 
String u=request.getParameter("email");
String p=request.getParameter("pass");
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement checkUser=(PreparedStatement)db.getCheckUser();
checkUser.setString(1, u);
checkUser.setString(2, p);
ResultSet rs=checkUser.executeQuery();
if(rs.next())
{
    session.setAttribute("uid", u);
    session.setAttribute("rs", rs);
    response.sendRedirect("UserProfile.jsp");
}
else
{
    session.setAttribute("msg","Wrong Entries!!");
    response.sendRedirect("LoginRegisterUser.jsp");
}   	
%>