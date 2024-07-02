<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create School</title>
    <!-- Include necessary CSS and JavaScript links here -->
</head>
<body>
    <%
        String schoolId = request.getParameter("school");
        // You can also perform validation and sanitization here before updating the database

        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/test";
        String user = "root";
        String password = "password";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            Connection connection = DriverManager.getConnection(url, user, password);

            // Create a prepared statement for updating the database
            String sql = "INSERT INTO school_id (idschool_id,used) VALUES (?,0)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, schoolId);

            // Execute the query
            int rowsAffected = preparedStatement.executeUpdate();

            // Close the resources
            preparedStatement.close();
            connection.close();
    		response.sendRedirect("project/new.jsp");
        } catch (Exception e) {
    %>
            <p>An error occurred: <%= e.getMessage() %></p>
    <%
        }
    %>
</body>
</html>
