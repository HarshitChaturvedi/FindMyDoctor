<%@page import="java.sql.PreparedStatement"%>
<%
    String uid=(String)session.getAttribute("uid");
    if(uid==null)  
    {
        session.setAttribute("msg","Please Login First!!");
        response.sendRedirect("LoginRegisterUser.jsp");
    } else{
        String op=request.getParameter("old");
        String np=request.getParameter("new");
        String cp=request.getParameter("cnf");
        if(cp.equals(np)){
db.DbConnect db=(db.DbConnect)application.getAttribute("dbCon");
PreparedStatement resetPassUser=
        (PreparedStatement)db.getResetPassUser();
resetPassUser.setString(1, np); 
resetPassUser.setString(2, uid);
resetPassUser.setString(3, op);
int x=resetPassUser.executeUpdate();
if(x!=0){
    session.setAttribute("msg","Password Changed!!");
    response.sendRedirect("UserProfile.jsp");
}else{
    session.setAttribute("msg","Old Password Wrong!!");
    response.sendRedirect("ResetPasswordUser.jsp");
}
        }else{
session.setAttribute("msg","Password does not Match!!");
response.sendRedirect("ResetPasswordUser.jsp");
        }
    }
%> 


