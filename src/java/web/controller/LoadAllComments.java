package web.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.sql.SQLException;
import java.util.ArrayList;
import web.model.CommentDTO;
import web.model.WebDAO;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class LoadAllComments extends ActionSupport {

    private ArrayList<CommentDTO> commentList;

    public LoadAllComments() {

    }

    @Override
    public String execute() throws Exception {
        WebDAO dao = new WebDAO();

        commentList = dao.getAllComments();

        return "success";
    }

    public ArrayList<CommentDTO> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<CommentDTO> commentList) {
        this.commentList = commentList;
    }

}
