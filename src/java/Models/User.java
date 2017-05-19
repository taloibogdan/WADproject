package Models;

import java.io.Serializable;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    String username = null;
    String password = null;
    String name = null;
    String email = null;
    String country = null;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy="owner")
    private Set<Photo> photos = new HashSet<Photo>();
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy="editor")
    private Set<Edit> edits = new HashSet<Edit>();
    
    public String encrypt(String pass){
        try {
            MessageDigest crypt = MessageDigest.getInstance("MD5");
            crypt.update(pass.getBytes());
            return String.format("%032X", new BigInteger(1, crypt.digest()));
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User(){
    }
    
    public User(String n, String u, String p, String e, String c) {
        username = u;
        name = n;
        password = encrypt(p);
        email = e;
        country = c;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public boolean checkPassword(String password) {
        return encrypt(password).equals(this.password);
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = encrypt(password);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Set<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(Set<Photo> photos) {
        this.photos = photos;
    }
    
    public void addPhoto(Photo photo)
    {
        this.photos.add(photo);
    }

    public Set<Edit> getEdits() {
        return edits;
    }

    public void setEdits(Set<Edit> edits) {
        this.edits = edits;
    }
    
    public void addEdit(Edit edit)
    {
        this.edits.add(edit);
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    
}
