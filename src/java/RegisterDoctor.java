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

@MultipartConfig(maxFileSize=16177215)
public class RegisterDoctor extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException{
HttpSession session=request.getSession();
try {
    String e=request.getParameter("email");
    
    ServletContext ctx=getServletContext();
     db.DbConnect db=(db.DbConnect)ctx.getAttribute("dbCon");
    PreparedStatement getUser=db.getGetUser();
    getUser.setString(1, e);
    ResultSet rs=getUser.executeQuery();
    if(rs.next()){
session.setAttribute("msg", "Email ID Already Registered");
response.sendRedirect(""
        + "LoginRegisterDoctor.jsp");
    }
    else{
String n=request.getParameter("name");
String phone=request.getParameter("phone");
String qual=request.getParameter("qual");
String sp=request.getParameter("speciality");
int exp=Integer.parseInt(request.getParameter("exp"));
int fee=Integer.parseInt(request.getParameter("Fee"));
String days1=request.getParameter("days1");
String days2=request.getParameter("days2");
String d1s11=request.getParameter("d1s11");
String d1s12=request.getParameter("d1s12");
String d1s21=request.getParameter("d1s21");
String d1s22=request.getParameter("d1s22");
String d2s11=request.getParameter("d2s11");
String d2s12=request.getParameter("d2s12");
String d2s21=request.getParameter("d2s21");
String d2s22=request.getParameter("d2s22");
String state=request.getParameter("state");
String city=request.getParameter("city");
String add=request.getParameter("add");
//code to convert String date to SQL Date
//    java.text.SimpleDateFormat sdf=
//            new java.text.SimpleDateFormat("MM/dd/yyyy");
//    java.util.Date dt=sdf.parse(d);
//    java.sql.Date date=new java.sql.Date(dt.getTime());
//code end
//code to get file from form request 
javax.servlet.http.Part file=request.getPart("photo");
java.io.InputStream fis=file.getInputStream();
//code end
//code to generate 8 character password
String pass=request.getParameter("pass");
//String pass="";
/*
String letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$%";
int i,pl=8;
for(int x=0;x<pl;x++)
{
    i=(int)(Math.random()*(letters.length()-1));
    pass=pass+letters.charAt(i);
}
*/
//code end
PreparedStatement addDoctor=db.getAddDoctor();
addDoctor.setString(1, e);
addDoctor.setString(2, pass);
addDoctor.setString(3, n);
addDoctor.setString(4, sp );
addDoctor.setString(5, phone);
addDoctor.setString(6, qual);
//addUser.setDate(4, date);
addDoctor.setInt(7, exp);
addDoctor.setInt(8, fee);
addDoctor.setString(9, state);
addDoctor.setString(10, city);
addDoctor.setString(11, add);
addDoctor.setBinaryStream(12, fis);
addDoctor.setString(13, days1);
addDoctor.setString(14, days2);
addDoctor.setString(15, d1s11);
addDoctor.setString(16, d1s12);
addDoctor.setString(17, d1s21);
addDoctor.setString(18, d1s22);
addDoctor.setString(19, d2s11);
addDoctor.setString(20, d2s12);
addDoctor.setString(21, d2s21);
addDoctor.setString(22, d2s22);
/*
String subject="Student Successfully Registered";
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
addDoctor.executeUpdate();
session.setAttribute("msg", "Doctor Registration Successfull");    
    }
} catch (Exception ex) {
    session.setAttribute("msg", 
            "Registration Failed "+ex.getMessage());
    ex.printStackTrace();
} 
response.sendRedirect("LoginRegisterDoctor.jsp");
    }
}
