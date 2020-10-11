/**
 *
 * @author Duc Tong, Duc Loc, Tien Minh)
 */
package web.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* Establish a connection to database */
public class DBUtils {

    /**
     * Try to get connection to database
     *
     * @return database connection if successful, null if failed
     */
    public static Connection makeConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/comment","root", "");

            return conn;

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBUtils.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBUtils.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
}
