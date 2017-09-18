package db;
import java.sql.*;
public class DbConnect {
    private Connection con;
    private Statement st;
    private PreparedStatement addUser,getDoctor,addDoctor,takeDoctor,cancelToday,todayAppointment,addAppointment,allAppointments,checkUser,changePassDoctor,checkDoctor,takeUser,updateUser,updateDoctor,forgotPUser,forgotPDoctor,findDoctor,getUser,resetPassUser,deleteUser,deleteDoctor;
    public DbConnect(){
        try{
              /*  Class.forName("oracle.jdbc.driver.OracleDriver");  
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ptalk","ptalk"); 
            */ 
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/findmydoctor","root","incapp");
                st=con.createStatement();
                addUser=con.prepareStatement("insert into users Values(?,?,?,?)");
                addAppointment=con.prepareStatement("insert into appointment (apid,uemail,demail,adate,atime,name,phone,status) Values(null,?,?,?,?,?,?,?)");
                addDoctor=con.prepareStatement("insert into doctor Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                updateUser=con.prepareStatement("update users set name=?,phone=? where email=?");
                cancelToday=con.prepareStatement("update appointment set status=? where apid=?");
                updateDoctor=con.prepareStatement("update doctor set name=?,phone=?,speciality=?,qualification=?,Exp=?,fee=?,state=?,city=?,adr=?,photo=?,day1=?,day2=?,d1s11=?,d1s12=?,d1s21=?,d1s22=?,d2s11=?,d2s12=?,d2s21=?,d2s22=? where email=?");
                checkUser=con.prepareStatement("select * from users where email=? and pass=?");
                todayAppointment=con.prepareStatement("select * from appointment where adate=?");
                checkDoctor=con.prepareStatement("select * from doctor where email=? and pass=?");
                takeDoctor=con.prepareStatement("select * from doctor where email=?");
                allAppointments=con.prepareStatement("select * from appointment where demail=?");
                takeUser=con.prepareStatement("select * from users where email=?");
                findDoctor=con.prepareStatement("select * from doctor where name=? or speciality=? or state=? or city=?");
                getUser=con.prepareStatement("select * from users where email=?");
                getDoctor=con.prepareStatement("select * from doctor where email=?");
                resetPassUser=con.prepareStatement("update users set pass=? where email=? and pass=?");
                changePassDoctor=con.prepareStatement("update users set pass=? where email=? and pass=?");
                deleteUser=con.prepareStatement("delete from users where email=?");
                deleteDoctor=con.prepareStatement("delete from doctor where email=?");
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    public Connection getCon() {
        return con;
    }

    public Statement getSt() {
        return st;
    }
    
    public PreparedStatement getUpdateUser() {
        return updateUser;
    }
    public PreparedStatement getGetDoctor() {
        return getDoctor;
    }
    public PreparedStatement getTakeDoctor() {
        return takeDoctor;
    }
    
    public PreparedStatement getAddUser() {
        return addUser;
    }
    
    public PreparedStatement getAllAppoinments() {
        return allAppointments;
    }
    public PreparedStatement getAddAppointment() {
        return addAppointment;
    }
    public PreparedStatement getAddDoctor() {
        return addDoctor;
    }
    public PreparedStatement getUpdateDoctor() {
        return updateDoctor;
    }

    public PreparedStatement gettodayAppointment() {
        return todayAppointment;
    }
    public PreparedStatement getCheckUser() {
        return checkUser;
    }
    
    public PreparedStatement getCheckDoctor() {
        return checkDoctor;
    }
    
    public PreparedStatement getTakeUser() {
        return takeUser;
    }

    public PreparedStatement getFindDoctor() {
        return findDoctor;
    }

    public PreparedStatement getGetUser() {
        return getUser;
    }
    public PreparedStatement getResetPassUser() {
        return resetPassUser;
    }
    public PreparedStatement getChangePassDoctor() {
        return changePassDoctor;
    }
    public PreparedStatement getdeleteUser() {
        return deleteUser;
    }
    public PreparedStatement getdeleteDoctor() {
        return deleteDoctor;
    }
    public PreparedStatement getCancelToday() {
        return cancelToday;
    }
}