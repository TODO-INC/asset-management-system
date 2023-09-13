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

@WebServlet("/AssetInsert")
public class AssetInsert extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/test";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the modal form
        String size = request.getParameter("size");
        String cost = request.getParameter("cost");
        String scheme = request.getParameter("scheme");
        String inaugurationDate = request.getParameter("inauguration");
        String totalFloors = request.getParameter("floors");
        String totalRooms = request.getParameter("rooms");
        String totalClassrooms = request.getParameter("classrooms");
        String totalLabs = request.getParameter("labs");

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Establish a database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Insert data into the database
            String sql = "INSERT INTO building_details (size, building_cost, scheme, inauguration_date, total_floors, total_rooms, total_classrooms, total_labs) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, Integer.parseInt(size));
            preparedStatement.setBigDecimal(2, new BigDecimal(cost));
            preparedStatement.setString(3, scheme);
            preparedStatement.setDate(4, Date.valueOf(inaugurationDate));
            preparedStatement.setInt(5, Integer.parseInt(totalFloors));
            preparedStatement.setInt(6, Integer.parseInt(totalRooms));
            preparedStatement.setInt(7, Integer.parseInt(totalClassrooms));
            preparedStatement.setInt(8, Integer.parseInt(totalLabs));
            preparedStatement.executeUpdate();

            response.getWriter().write("Data saved successfully");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
