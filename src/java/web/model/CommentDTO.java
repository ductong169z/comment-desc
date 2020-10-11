package web.model;

import java.io.Serializable;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class CommentDTO implements Serializable {
    private int id;
    private String email;
    private String content;
    private String created_at;

    public CommentDTO() {
    }

    public CommentDTO(int id, String email, String content, String created_at) {
        this.id = id;
        this.email = email;
        this.content = content;
        this.created_at = created_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    
    
}
