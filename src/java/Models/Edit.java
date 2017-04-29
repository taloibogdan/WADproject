package Models;

import Managers.ConstManager;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import javax.imageio.ImageIO;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="edits")
public class Edit implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String path = null;
    private String pathWatermarked = null;
    private String comment = null;
    private int rating = 0;
    
    @ManyToOne(cascade = CascadeType.PERSIST)
    private User editor = null;

    @ManyToOne(cascade = CascadeType.PERSIST)
    private Photo original = null;

    
    
    public Edit() {
    }

    public Edit(String path, String comment, User editor, Photo original) {
        this.path = path;
        this.comment = comment;
        this.editor = editor;
        this.original = original;
    }
    
    public void noWatermrk()
    {
        pathWatermarked = path;
    }
    
    public void watermark()
    {
        if(pathWatermarked != null) return;
        try {
            String[] spl = path.split("/");
            String name = spl[spl.length-1].split("\\.")[0];
            String pth = "";
            for(int i=0; i<spl.length-1; ++i)
                pth += spl[i]+"/";
            String nm = "";
            for(int i=0; i<name.length(); i+=2)
                nm += name.charAt(i);
            BufferedImage originalImage = ImageIO.read(new File(ConstManager.PathToWeb+path));
            int type = originalImage.getType() == 0 ? BufferedImage.TYPE_INT_ARGB : originalImage.getType();
            BufferedImage newImage = watermarkImage(originalImage, type);
            
            pathWatermarked = pth+nm+"wm"+ConstManager.Rand.nextInt(100000000)+".jpg";
            ImageIO.write(newImage, "jpg", new File(ConstManager.PathToWeb+pathWatermarked));

        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }
    private static BufferedImage watermarkImage(BufferedImage originalImage, int type) throws IOException
    {
        BufferedImage newImage = new BufferedImage(originalImage.getWidth(), originalImage.getHeight(), type);
        BufferedImage wm = ImageIO.read(new File(ConstManager.PathToWeb+ConstManager.PathToWatermark));
        
        Graphics2D g = newImage.createGraphics();
        g.drawImage(originalImage, 0, 0, originalImage.getWidth(), originalImage.getHeight(), null);
        g.drawImage(wm, 0, 0, originalImage.getWidth(), originalImage.getHeight(), null);
        g.dispose();
        
        return newImage;
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

    public String getPathCompressed() {
        return pathWatermarked;
    }

    public void setPathCompressed(String pathCompressed) {
        this.pathWatermarked = pathCompressed;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public User getEditor() {
        return editor;
    }

    public void setEditor(User editor) {
        this.editor = editor;
    }    

    public String getPathWatermarked() {
        return pathWatermarked;
    }

    public void setPathWatermarked(String pathWatermarked) {
        this.pathWatermarked = pathWatermarked;
    }

    public Photo getOriginal() {
        return original;
    }

    public void setOriginal(Photo original) {
        this.original = original;
    }
    
}
