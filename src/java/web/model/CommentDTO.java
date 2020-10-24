package web.model;

import java.io.Serializable;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */

/* Object to store a comment's data */
public class CommentDTO implements Serializable {
    /* A comment's properties */
    private String email;
    private String content;
    private String created_at;

    /* Constructors */
    public CommentDTO() {
    }

    public CommentDTO(String email, String content, String created_at) {
        this.email = email;
        this.content = content;
        this.created_at = created_at;
    }

    /* Getters and Setters */
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
