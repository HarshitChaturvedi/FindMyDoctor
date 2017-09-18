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
public class UpdateDoctor extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException{
HttpSession session=request.getSession();
try {
    String e=request.getParameter("email");
    ServletContext ctx=getServletContext();
     db.DbConnect db=(db.DbConnect)ctx.getAttribute("dbCon");
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
//code end
PreparedStatement updateDoctor=db.getUpdateDoctor();
updateDoctor.setString(1, n);
updateDoctor.setString(2, phone);
updateDoctor.setString(3, sp );
updateDoctor.setString(4, qual);//addUser.setDate(4, date);
updateDoctor.setInt(5, exp);
updateDoctor.setInt(6, fee);
updateDoctor.setString(7, state);
updateDoctor.setString(8, city);
updateDoctor.setString(9, add);
updateDoctor.setBinaryStream(10, fis);
updateDoctor.setString(11, days1);
updateDoctor.setString(12, days2);
updateDoctor.setString(13, d1s11);
updateDoctor.setString(14, d1s12);
updateDoctor.setString(15, d1s21);
updateDoctor.setString(16, d1s22);
updateDoctor.setString(17, d2s11);
updateDoctor.setString(18, d2s12);
updateDoctor.setString(19, d2s21);
updateDoctor.setString(20, d2s22); 
updateDoctor.setString(21, e); 

/*String subject="Student Successfully Registered";
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
updateDoctor.executeUpdate();
session.setAttribute("msg", "Update Successfull");    
    
} catch (Exception ex) {
    session.setAttribute("msg", 
            "Updation Failed "+ex.getMessage());
    ex.printStackTrace();
} 
response.sendRedirect("DoctorProfile.jsp");
    }
}
