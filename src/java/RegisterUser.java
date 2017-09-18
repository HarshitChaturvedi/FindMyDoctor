import java.io.IOException;
import java.sql.*;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.swing.JOptionPane;
@MultipartConfig(maxFileSize=16177215)
public class RegisterUser extends HttpServlet {
    protected void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
HttpSession session=request.getSession();
try {
    String e=request.getParameter("email");
    ServletContext ctx=getServletContext();
     db.DbConnect db1=(db.DbConnect)ctx.getAttribute("dbCon");
    PreparedStatement getUser=db1.getGetUser();
    getUser.setString(1, e);
    ResultSet rs=getUser.executeQuery();
    if(rs.next()){
session.setAttribute("msg", "Email ID Already Registered");
response.sendRedirect("LoginRegisterUser.jsp");
    }
    else{
String n=request.getParameter("name");
String phone=request.getParameter("phone");
String pass=request.getParameter("pass");//String pass="";
//code to automatically generate password.

String letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$%";
int i,pl=8;
for(int x=0;x<pl;x++)
{
    i=(int)(Math.random()*(letters.length()-1));
    pass=pass+letters.charAt(i);
}

//code end
PreparedStatement addUser=db1.getAddUser();
addUser.setString(1, e);
addUser.setString(2, n);
addUser.setString(3, phone);
addUser.setString(4, pass);
//mail sending code
/*
String subject="User Successfully Registered";
String body="You are Registered Successfullly and Your User ID: "+e+" and Password: "+pass;
final String aemail=ctx.getInitParameter("aemail");
final String apass=ctx.getInitParameter("apass");
Properties properties = new Properties();
properties.put("mail.smtp.host", "smtp.gmail.com");  
properties.put("mail.smtp.socketFactory.port", "465");  
properties.put("mail.smtp.socketFactory.class",  
      "javax.net.ssl.SSLSocketFactory");  
properties.put("mail.smtp.auth", "true");  
properties.put("mail.smtp.port", "465");
Session ses = Session.getInstance(properties,    
new javax.mail.Authenticator() {  
protected PasswordAuthentication getPasswordAuthentication() {  
return new PasswordAuthentication(aemail, apass); } 
    });
Message message = new MimeMessage(ses);  
message.setFrom(new InternetAddress(aemail));  
message.setRecipients(Message.RecipientType.TO, 
        InternetAddress.parse(e));  
message.setSubject(subject);  
message.setText(body);  
Transport.send(message); 
*/
//mail sending code end
addUser.executeUpdate();
session.setAttribute("msg", "Registration Successfull");    
response.sendRedirect("LoginRegisterUser.jsp");
   }
} catch (Exception ex) {
session.setAttribute("msg","Registration failed "+ex);
            ex.printStackTrace();
response.sendRedirect("LoginRegisterUser.jsp");
} 
    }    
}