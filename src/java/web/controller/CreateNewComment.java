package web.controller;

import com.opensymphony.xwork2.ActionSupport;
import web.model.WebDAO;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class CreateNewComment extends ActionSupport {

    private String email; // email user entered
    private String comment; // comment user entered

    /* Constructor */
    public CreateNewComment() {
    }

    /**
     * Main execute method for Create New Comment Action
     * @return "success" indicates the action is successful, else return "fail"
     * @throws Exception
     */
    @Override
    public String execute() throws Exception {
        WebDAO dao = new WebDAO(); // create an object to interact with database

        /* Try to create new comment using the email and comment user entered
        return success if created successfully, else return fail
        */
        if (dao.createNewComment(email, comment)) {
            return "success";
        }
        
        return "fail";
    }

    /* Getters and Setters */
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
