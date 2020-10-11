package web.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.sql.SQLException;
import web.model.WebDAO;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class CreateNewComment extends ActionSupport {

    private String email;
    private String comment;

    public CreateNewComment() {

    }

    @Override
    public String execute() throws Exception {
        WebDAO dao = new WebDAO();

        if (dao.createNewComment(email, comment)) {
            return "success";
        }
        
        return "fail";
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
