import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
public class CtxListener implements ServletContextListener {
    db.DbConnect db;
    public void contextInitialized(ServletContextEvent sce) {
        db=new db.DbConnect();
        ServletContext ctx=sce.getServletContext();  
	ctx.setAttribute("dbCon", db);
    }
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            Connection c=db.getCon();
            c.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
