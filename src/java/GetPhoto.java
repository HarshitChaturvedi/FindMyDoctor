/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class GetPhoto extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
String id=request.getParameter("email");
ServletContext ctx=getServletContext();
db.DbConnect db=(db.DbConnect)ctx.getAttribute("dbCon");
PreparedStatement getDoctor=db.getGetDoctor();
getDoctor.setString(1, id);
ResultSet rs=getDoctor.executeQuery();
if(rs.next())
{
    response.getOutputStream().write(rs.getBytes(12));
} 
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}