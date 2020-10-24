package web.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import web.utils.DBUtils;

/**
 *
 * @author Quan Duc Loc CE140037 (SE1401)
 */
public class WebDAO {

    /* Constructor */
    public WebDAO() {
    }

    /**
     * Create a new comment using email and content user entered
     * @param email
     * @param content
     * @return true if created successfully, else return false
     * @throws SQLException 
     */
    public boolean createNewComment(String email, String content) throws SQLException {

        /* Declare Connection, PreparedStatement variables */
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.makeConnection(); // make a connection to database
            
            /* Prepare SQL comment insertion statement to insert new comment to database */
            st = conn.prepareStatement("INSERT INTO comment(email, content, created_at) VALUES(?, ?, ?)");
            st.setString(1, email);
            st.setString(2, content);
            st.setTimestamp(3, new Timestamp(System.currentTimeMillis()));

            // if created comment successfully
            if (st.executeUpdate() > 0) {
                return true;
            }
        } finally {
            /* Close the JDBC resources after use */
            if (st != null) {
                st.close();
            }
            if (conn != null) {
                conn.close();
            }
            if (rs != null) {
                conn.close();
            }
        }

        return false;
    }

    /**
     * Get all comments available in the database
     * @return a comment list if there are comments in database, else return null
     * @throws SQLException 
     */
    public ArrayList<CommentDTO> getAllComments() throws SQLException {
        /* Declare Connection, PreparedStatement variables */
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<CommentDTO> commentList = null; // store list of comments loaded from database

        try {
            conn = DBUtils.makeConnection(); // make a connection to database
            
            /* Prepare SQL selection statement to get all comments from database */
            st = conn.prepareStatement("SELECT * FROM comment ORDER BY created_at DESC");
            
            rs = st.executeQuery(); // execute the statement

            /* If there are any comments in database */
            while (rs.next()) {
                /* Instantiate a new comment list for the first comment added */
                if (commentList == null) {
                    commentList = new ArrayList<>();
                }

                /* Temp variables to store data of a comment retrieved from database */
                String email = rs.getString(2);
                String content = rs.getString(3);
                Timestamp created_at = rs.getTimestamp(4);
                
                /* Add a new comment with all of the above data into comment list */
                commentList.add(new CommentDTO(email, content, new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(created_at)));
            }

            return commentList;
        } finally {
            /* Close the JDBC resources after use */
            if (st != null) {
                st.close();
            }
            if (conn != null) {
                conn.close();
            }
            if (rs != null) {
                conn.close();
            }
        }
    }

}
