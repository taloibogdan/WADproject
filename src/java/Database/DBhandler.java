package Database;

import Models.User;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.UserTransaction;

public class DBhandler {
    private static DBhandler instance = null;
    
    private DBhandler() { }
    
    public static DBhandler getInstance()
    {
        if(instance == null)
        {
            instance = new DBhandler();
        }
        return instance;
    }
    
    private EntityManager em;
    private UserTransaction userT;
    
    public void init(EntityManager e, UserTransaction u)
    {
        em = e;
        userT = u;
    }
    /**
     * Fills the database with some test users
     */
    public void fillUsers()
    {
        try {
            userT.begin();
            em.getTransaction().begin();
            User u = new User();
            u.setUsername("user1");
            u.setPassword("pass1234");
            u.setName("User 1");
            u.setEmail("user1@gmail.com");
            em.persist(u);
            u = new User();
            u.setUsername("user2");
            u.setPassword("pass1235");
            u.setName("User 2");
            u.setEmail("user2@gmail.com");
            em.persist(u);
            em.flush();
            em.getTransaction().commit();
            userT.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    /**
     * @param user the username
     * @return A User object if the username exists in the database
     * or null in case the user does not exist
     */
    public User getUser(String user)
    {
        Query q = em.createQuery("SELECT u FROM User u WHERE u.username='"+user+"'");
        if (q.getResultList().isEmpty())
            return null;
        return (User)q.getResultList().get(0);
    }
    
    /**
     * @param user the username
     * @return true if the user exists, false otherwise
     */
    public boolean isUserInDB(String user)
    {
        return getUser(user) != null;
    }
    
    /**
     * @param user the username
     * @param pass the password
     * @return true if the user exists and the given password matches the user's, false otherwise
     */
    public boolean checkUserPass(String user, String pass)
    {
        User u = getUser(user);
        if (u == null)
        {
            return false;
        }
        return u.checkPassword(pass);
    }
}
