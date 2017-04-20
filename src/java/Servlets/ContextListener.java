package Servlets;

import Database.DBhandler;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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
        DBhandler.getInstance().init(em, userT);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        //Nope
    }
}
