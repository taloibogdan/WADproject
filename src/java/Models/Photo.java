package Models;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="photos")
public class Photo implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String path = null;
    private String request = null;
    private float comission = 0;
    private boolean done = false;
    
    @ManyToOne(cascade = CascadeType.PERSIST)
    private User owner = null;

    @OneToMany(cascade = CascadeType.PERSIST, mappedBy="original")
    private Set<Edit> edits = new HashSet<Edit>();
    
    
    public Photo() {
    }

    public Photo(String path, String request) {
        this.path = path;
        this.request = request;
    }
    
    public Photo(String path, String request, float comission, User owner) {
        this.path = path;
        this.request = request;
        this.comission = comission;
        this.owner = owner;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public float getComission() {
        return comission;
    }

    public void setComission(float comission) {
        this.comission = comission;
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

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
    
}
