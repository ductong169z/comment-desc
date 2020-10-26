package web.controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import web.model.CommentDTO;
import web.model.WebDAO;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class LoadAllComments extends ActionSupport {

    private ArrayList<CommentDTO> commentList; // store comment list loaded from database

    /* Constructor */
    public LoadAllComments() {
    }

    /**
     * Main execute method for Load All Comments Action
     * @return "success" indicates the action is successful
     * @throws Exception
     */
    @Override
    public String execute() throws Exception {
        WebDAO dao = new WebDAO(); // create an object to interact with database

        commentList = dao.getAllComments(); // get all comments from database

        return "success";
    }

    /* Getters and Setters */
    public ArrayList<CommentDTO> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<CommentDTO> commentList) {
        this.commentList = commentList;
    }

}
