package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL =
            "jdbc:mysql://localhost:3306/travel_management";

    private static final String USER = "root";

    private static final String PASSWORD = "Mastani@2006";

    public static Connection getConnection() throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (ClassNotFoundException e) {

            throw new SQLException("Database Driver Not Found", e);
        }
    }

    public static void closeConnection(Connection conn) {

        if (conn != null) {

            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {

        try {

            Connection con = getConnection();

            if (con != null) {

                System.out.println("Database Connected Successfully!");

                con.close();

            } else {

                System.out.println("Database Connection Failed!");
            }

        } catch (Exception e) {

            System.out.println("Connection Error:");

            e.printStackTrace();
        }
    }
}