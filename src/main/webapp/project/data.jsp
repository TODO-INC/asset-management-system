<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
String username = request.getParameter("username");

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
List<Map<String, Object>> buildingInfoList = new ArrayList<>();

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "password");
    statement = connection.createStatement();
    String sql = "SELECT * FROM building_details WHERE username = ?";
    PreparedStatement pc = connection.prepareStatement(sql);
    pc.setString(1, username);
    resultSet = pc.executeQuery();
    
    while (resultSet.next()) {
        Map<String, Object> buildingInfo = new HashMap<>();
        buildingInfo.put("buildingName", resultSet.getString("building_name"));
        buildingInfo.put("size", resultSet.getInt("size"));
        buildingInfo.put("cost", resultSet.getInt("building_cost"));
        buildingInfo.put("scheme", resultSet.getString("scheme"));
        buildingInfo.put("inaugurationDate", resultSet.getDate("inauguration_date"));
        buildingInfo.put("totalFloor", resultSet.getInt("total_floors"));
        buildingInfo.put("totalRooms", resultSet.getInt("total_rooms"));
        buildingInfo.put("totalClass", resultSet.getInt("total_classrooms"));
        buildingInfo.put("totalLabs", resultSet.getInt("total_labs"));
        buildingInfoList.add(buildingInfo);
    }
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
} finally {
    try { if(resultSet != null) resultSet.close(); } catch (Exception e) { e.printStackTrace(); }
    try { if(statement != null) statement.close(); } catch (Exception e) { e.printStackTrace(); }
    try { if(connection != null) connection.close(); } catch (Exception e) { e.printStackTrace(); }
}
%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asset Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href='https://fonts.googleapis.com/css?family=Reem Kufi' rel='stylesheet'>
    <link href="css/header.css" rel="stylesheet">
    <link href="css/asset.css" rel="stylesheet">
</head>
<body>
    <div class="container custom-common-container">
        <div class="nav"></div>
        
        <% for (Map<String, Object> buildingInfo : buildingInfoList) { %>
            <div class="card mt-3 mb-3">
                <div class="card-header">
                    <%= buildingInfo.get("buildingName") %>
                </div>
                <div class="card-body">
                    <p><strong>Size:</strong> <%= buildingInfo.get("size") %> Sq feet</p>
                    <p><strong>Building cost:</strong> <%= buildingInfo.get("cost") %> INR</p>
                    <p><strong>Scheme:</strong> <%= buildingInfo.get("scheme") %></p>
                    <p><strong>Date of Inauguration:</strong> <%= buildingInfo.get("inaugurationDate") %></p>
                    <p><strong>Total Floor:</strong> <%= buildingInfo.get("totalFloor") %></p>
                    <p><strong>Total Rooms:</strong> <%= buildingInfo.get("totalRooms") %></p>
                    <p><strong>Total Class:</strong> <%= buildingInfo.get("totalClass") %></p>
                    <p><strong>Total Labs:</strong> <%= buildingInfo.get("totalLabs") %></p>
                </div>
            </div>
            <% } %>
        </div>
        
        
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
    </html>
    