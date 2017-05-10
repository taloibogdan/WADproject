package Servlets;

import Managers.ConstManager;
import Managers.DBhandler;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.transaction.UserTransaction;

public class ContextListener implements ServletContextListener {
    @PersistenceContext(unitName = "DatabasePU")
    EntityManager em;
    
    @Resource
    UserTransaction userT;
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        String fullPath = context.getRealPath("index.jsp");
        ConstManager.PathToWeb = fullPath.replace("index.jsp", "");
        
        DBhandler db = DBhandler.getInstance();
        db.init(em, userT);
        db.fillDB();
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        //Nope
    }
}
