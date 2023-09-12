<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head>
    <script src="vendor/assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.112.5">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link href="vendor/assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/header.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="css/profile.css" rel="stylesheet">
</head>

<body>
<div class="container custom-common-container">
  <div class="nav"></div>
  <nav class="nav custom-common-header">
    <ul>
        <p class="nav-link" aria-current="page" href="#">ASSET MANAGER</p>
    </ul>
    <ul class="nav ms-auto me-0"> <!-- Added ms-auto and me-0 classes -->
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="asset.jsp">Asset</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile.jsp">Profile</a>
      </li>
    </ul>
  </nav>
  </div>
  <%@ page import="java.sql.*" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>

<%
    String username = request.getParameter("username");
    String url = "jdbc:mysql://localhost:3306/test";
    String user = "root";
    String password = "password";

    // Establish a database connection
    Connection connection = null;
    try {
        Context context = new InitialContext();
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the database connection
        connection = DriverManager.getConnection(url, user, password);

        // Create a SQL query to fetch user information based on username
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM school_detail WHERE username=?");
        statement.setString(1, username);
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String schoolName = resultSet.getString("name");
            String schoolType = resultSet.getString("type");
            String managementType = resultSet.getString("management");
            String district = resultSet.getString("district");
            String taluka = resultSet.getString("taluka");
            String address = resultSet.getString("address");
            int noOfBuildings = resultSet.getInt("building");
            String schoolNumber = resultSet.getString("school_id");
%>
            <div class="container main">
                <h2>Profile</h2>
                <div class="card">
                    <div class="card-body">
                        <i class="fa fa-pen fa-xs edit"></i>
                        <table>
                <tbody>
                    <tr>
                        <td> School Name</td>
                        <td>:</td>
                        <td><%= schoolName %></td>
                    </tr>
                    <tr>
                        <td>School Type</td>
                        <td>:</td>
                        <td><%= schoolType %></td>
                    </tr>
                    <tr>
                        <td>Management Type</td>
                        <td>:</td>
                        <td><%= managementType %></td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td>:</td>
                        <td><%= district %></td>
                    </tr>
                    <tr>
                        <td>Taluka</td>
                        <td>:</td>
                        <td><%= taluka %></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>:</td>
                        <td><%= address %></td>
                    </tr>
                    <tr>
                      <td>No of Buildings</td>
                      <td>:</td>
                      <td><%= noOfBuildings %></td>
                  </tr>
                  <tr>
                    <td>School Number</td>
                    <td>:</td>
                    <td><%= schoolNumber %></td>
                </tr>
                </tbody>
            </table>
                    </div>
                </div>
            </div>
<%
        } else {
%>
            <p>User not found</p>
<%
        }
    } catch (Exception e) {
        out.print(e.getMessage());
        e.printStackTrace();
    } finally {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                out.print(e.getMessage());
                e.printStackTrace();
            }
        }
    }
%>

</body>