<%@page import="java.sql.PreparedStatement"%>
<%
    String uid=(String)session.getAttribute("uid");
    if(uid==null)  
    {
        session.setAttribute("msg","Please Login First!!");
        response.sendRedirect("LoginRegisterDoctor.jsp");
    } else{
        String op=request.getParameter("old");
        String np=request.getParameter("new");
        String cp=request.getParameter("cnf");
        if(cp.equals(np)){
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement changePassDoctor=
        (PreparedStatement)db.getChangePassDoctor();
changePassDoctor.setString(1, np); 
changePassDoctor.setString(2, uid);
changePassDoctor.setString(3, op);
int x=changePassDoctor.executeUpdate();
if(x!=0){
    session.setAttribute("msg","Password Changed!!");
    response.sendRedirect("DoctorProfile.jsp");
}      }else{
session.setAttribute("msg","Password does not Match!!");
response.sendRedirect("ChangePasswordDoctor.jsp");
        }
    }
%> 


