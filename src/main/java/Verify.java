import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.Connection;
import java.math.BigDecimal;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.ResultSet;


@WebServlet("/Verify")
public class Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/test";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "password";
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String uname = request.getParameter("name");
	    Connection connection = null;
	    PreparedStatement statement = null;

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	        
	        String updateQuery = "UPDATE building_details SET verified = 1 WHERE id = ?";
	        statement = connection.prepareStatement(updateQuery);
	        statement.setString(1, uname);
	        int rowsAffected = statement.executeUpdate();
	        
	        if (rowsAffected > 0) {
	            // Verification successful
	            response.setStatus(HttpServletResponse.SC_OK);
	        } else {
	            // Verification failed (username not found)
	            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	        // Handle the exception as needed (e.g., log it, display an error message)
	        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	    } finally {
	        try { if(statement != null) statement.close(); } catch (Exception e) { e.printStackTrace(); }
	        try { if(connection != null) connection.close(); } catch (Exception e) { e.printStackTrace(); }
	    }
	}

}