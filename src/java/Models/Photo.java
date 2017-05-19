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

    private String name = null;
    private String path = null;
    private String request = null;
    private float commission = 0;
    private boolean done = false;
    
    @ManyToOne()
    private User owner = null;

    @OneToMany(cascade = CascadeType.ALL, mappedBy="original")
    private Set<Edit> edits = new HashSet<Edit>();
        
    public Photo() {
    }

    public Photo(String name, String path, String request) {
        this.name = name;
        this.path = path;
        this.request = request;
    }
    
    public Photo(String name, String path, String request, float comission, User owner) {
        this.name = name;
        this.path = path;
        this.request = request;
        this.commission = comission;
        this.owner = owner;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public float getCommission() {
        return commission;
    }

    public void setCommission(float commission) {
        this.commission = commission;
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
