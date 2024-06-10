package authentificationrole.models;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    // JDBC driver name and database URL
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  // Updated to com.mysql.cj.jdbc.Driver for MySQL Connector/J 8.x
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tirageexamen?useSSL=false&serverTimezone=UTC";

    // Database credentials
    private static final String USER = "root"; // Update with your MySQL username
    private static final String PASS = "";     // Update with your MySQL password

    public static Connection getConnection() {
        Connection conn = null;
        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}