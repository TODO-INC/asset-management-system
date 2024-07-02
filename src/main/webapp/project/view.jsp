<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<!doctype html>
<html lang="en" data-bs-theme="auto">
<head>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="generator" content="Hugo 0.112.5">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sidebars/">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <link href='https://fonts.googleapis.com/css?family=Reem Kufi' rel='stylesheet'>
    <script src="js/sidebars.js"></script>
    <link href="css/view.css" rel="stylesheet">
    <link href="css/sidebar.css" rel="stylesheet">
  </head>
</head>
<body>
  <main class="d-flex flex-nowrap">
      <div class="d-flex flex-nowrap">
          <div class=" container-sm d-flex flex-column  p-2 bg-body-tertiary custom-sidebar">
              <a class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                  <span class="custom-title" >ASSET-MANAGER</span>
              </a>
              <hr style="background-color: whitesmoke;color: ghostwhite;height: 5px;">
              <ul class="nav nav-pills flex-column mb-auto">
                  <li>
                      <a href="view.jsp" class="nav-link btn-bd-sidebar-custom">
                          <i class="bi bi-grid"></i>
                          Manage
                      </a>
                  </li>
                  <li>
                      <a href="new.jsp" class="nav-link btn-bd-sidebar-custom">
                          <i class="bi bi-plus-circle-fill"></i>
                          New
                      </a>
                  </li>
              </ul>
              <hr>
          </div>
          <div class="b-example-divider b-example-vr"></div>
      </div>
      <div class="container-md d-flex flex-column  p-2 bg-body-tertiary custom-container">
          <div class="container">
              <%
              Connection conn = null;
              ResultSet rs = null;
              Statement stmt = null;
  
              try {
                  // Load the JDBC driver
                  Class.forName("com.mysql.cj.jdbc.Driver");
  
                  // Establish a connection
                  String url = "jdbc:mysql://localhost:3306/test";
                  String dbusername = "root";
                  String password = "password";
                  conn = DriverManager.getConnection(url, dbusername, password);
  
                  // Create a statement
                  stmt = conn.createStatement();
  
                  // Execute a query
                  String query = "SELECT * FROM school_detail";
                  rs = stmt.executeQuery(query);
  
                  // Loop through the results
                  while (rs.next()) {
  
                      String username = rs.getString("username");
                      String schoolName = rs.getString("name");
                      String schoolType = rs.getString("type");
                      String managementType = rs.getString("management");
                      String district = rs.getString("district");
                      String taluka = rs.getString("taluka");
                      String address = rs.getString("address");
                      int noOfBuildings = rs.getInt("building");
                      String schoolNumber = rs.getString("school_id");
                      %>
  
                      <div class="card custom-card">
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
                                <tr>
                                </tr>
                              </tbody>
                          </table>
                          <div class="button-container">
                              <a type="button" class="btn btn-primary" target="_blank" href="data.jsp?username=<%= username %>">More</a>
                          </div>
                      </div>
  
                      <%
                  }
              } catch (Exception e) {
                  out.println("An error occurred: " + e.getMessage());
                  e.printStackTrace();
              } finally {
                  // Close resources
                  try {
                      if (rs != null) rs.close();
                      if (stmt != null) stmt.close();
                      if (conn != null) conn.close();
                  } catch (SQLException e) {
                      out.println("An error occurred while closing resources: " + e.getMessage());
                      e.printStackTrace();
                  }
              }
              %>
          </div>
      </div>
  </main>
  </body>
</html>

