package Managers;

import Models.Photo;
import Models.Edit;
import Models.User;
import java.util.List;
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
     * Fills the database with some initial data if it is not already initialized
     */
    public void fillDB()
    {
        if(isUserInDB("admin")) return;
        try {
            userT.begin();
            em.getTransaction().begin();
            
            User u = new User();
            u.setUsername("admin");
            u.setPassword("pass123admin");
            u.setName("Admin");
            u.setEmail("admin@gmail.com");
            em.persist(u);
            
            Photo p = new Photo("Test Photo", "photos/before1.jpg", "Test", 10, u);
            em.persist(p);
            
            Edit e = new Edit("photos/after1.jpg","Test comm", u, p);
            e.watermark();
            em.persist(e);
            
            em.flush();
            
            em.getTransaction().commit();
            userT.commit();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public List<Photo> getAllRequests()
    {
        return em.createQuery("Select p from Photo p").getResultList();
    }
    
    public boolean AddEdit(Edit e)
    {
         try {
            userT.begin();
            em.getTransaction().begin();
            e.watermark();
            e = em.merge(e);
            e.getEditor().addEdit(e);
            e.getOriginal().addEdit(e);
            em.flush();
            em.getTransaction().commit();
            userT.commit();
        } catch (Exception ex) {
            return false;
        }
        return true;
    }
    
    public boolean AddPhoto(Photo p)
    {
         try {
            userT.begin();
            em.getTransaction().begin();
            p = em.merge(p);
            p.getOwner().addPhoto(p);
            em.flush();
            em.getTransaction().commit();
            userT.commit();
        } catch (Exception ex) {
            return false;
        }
        return true;
    }
    
    public boolean AddUser(User u)
    {
        try {
            userT.begin();
            em.getTransaction().begin();
            em.persist(u);
            em.flush();
            em.getTransaction().commit();
            userT.commit();
        } catch (Exception ex) {
            return false;
        }
        return true;
    }
    
    /**
     * @param user the username
     * @return A User object if the username exists in the database
     * or null in case the user does not exist
     */
    public Photo getPhoto(int id)
    {
        Query q = em.createQuery("SELECT p FROM Photo p WHERE p.id="+id);
        if (q.getResultList().isEmpty())
            return null;
        return (Photo)q.getResultList().get(0);
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
    /**
     * @param email the email
     * @return A User object if a user with the email exists in the database
     * or null in case the email does not exist
     */
    public User getUserByEmail(String email)
    {
        Query q = em.createQuery("SELECT u FROM User u WHERE u.email='"+email+"'");
        if (q.getResultList().isEmpty())
            return null;
        return (User)q.getResultList().get(0);
    }
    
    /**
     * @param email the email
     * @return true if a user with that email exists, false otherwise
     */
    public boolean isEmailInDB(String email)
    {
        return getUserByEmail(email) != null;
    }
    
    /**
     * @param email the email
     * @param pass the password
     * @return true if a user with the email exists and the given password matches the user's, false otherwise
     */
    public boolean checkEmailPass(String email, String pass)
    {
        User u = getUserByEmail(email);
        if (u == null)
        {
            return false;
        }
        return u.checkPassword(pass);
    }
}
