package web.model;

import java.sql.Connection;
import java.sql.Date;
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

    public WebDAO() {

    }

    public boolean createNewComment(String email, String content) throws SQLException {

        /* Declare Connection, PreparedStatement variables */
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.makeConnection();
            st = conn.prepareStatement("INSERT INTO comment(email, content, created_at) VALUES(?, ?, ?)");
            st.setString(1, email);
            st.setString(2, content);
            st.setTimestamp(3, new Timestamp(System.currentTimeMillis()));

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

    public ArrayList<CommentDTO> getAllComments() throws SQLException {
        /* Declare Connection, PreparedStatement variables */
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<CommentDTO> commentList = null;

        try {
            conn = DBUtils.makeConnection();
            st = conn.prepareStatement("SELECT * FROM comment ORDER BY created_at DESC");

            rs = st.executeQuery();

            while (rs.next()) {
                if (commentList == null) {
                    commentList = new ArrayList<>();
                }

                int id = rs.getInt(1);
                String email = rs.getString(2);
                String content = rs.getString(3);
                Timestamp created_at = rs.getTimestamp(4);
                
                commentList.add(new CommentDTO(id, email, content, new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(created_at)));
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
