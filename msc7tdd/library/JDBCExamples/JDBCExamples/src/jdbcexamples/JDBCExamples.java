/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbcexamples;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author dappeiris
 */
public class JDBCExamples {

        // Database URL, username and password
    public static void main(String args[])
    {
        String jdbcUrl = "jdbc:mysql://localhost:8889/mydatabase";
        String username = "root";
        String password = "root";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try{
            // Step 1: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Step 2: Open a connection
            System.out.println("Connecting to database...");
            connection = DriverManager.getConnection(jdbcUrl, username, password);

            // Step 3: Execute a query
            System.out.println("Creating statement...");
            statement = connection.createStatement();
            String sql = "SELECT id, name, age FROM users";
            resultSet = statement.executeQuery(sql);

            // Step 4: Extract data from result set
            while (resultSet.next()) {
                // Retrieve by column name
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");

                // Display values
                System.out.print("ID: " + id);
                System.out.print(", Name: " + name);
                System.out.println(", Age: " + age);
            }
        } catch (SQLException | ClassNotFoundException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } finally {
            // Step 5: Clean-up environment
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }   
}
