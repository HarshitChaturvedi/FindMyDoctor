<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<% 
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement todayAppointment=(PreparedStatement)db.gettodayAppointment();
ResultSet drs=(ResultSet)session.getAttribute("rs");
		Date date=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		String strDate=formatter.format(date);
todayAppointment.setString(1,strDate);
ResultSet rs=todayAppointment.executeQuery();
if(rs.next())
{
    session.setAttribute("aars", rs);
    response.sendRedirect("TodayAppointment.jsp");
}
else
{
    session.setAttribute("msg","No Result Found!!");
    response.sendRedirect("TodayAppointment.jsp");
}   	
%>