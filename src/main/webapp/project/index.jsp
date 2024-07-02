<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
String username = request.getParameter("username");%>
<!doctype html>
<html lang="en" data-bs-theme="auto">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.112.5">
  <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  <link href="css/header.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link href='https://fonts.googleapis.com/css?family=Reem Kufi' rel='stylesheet'>
  <link href="css/index.css" rel="stylesheet">
</head>

<body>
  <div class="container custom-common-container">
    <div class="nav"></div>
    <nav class="nav custom-common-header">
      <ul>
        <a class="nav-link" aria-current="page" href="<%= "index.jsp?username=" + username %>">ASSET MANAGER</a>
      </ul>
      <ul class="nav ms-auto me-0"> <!-- Added ms-auto and me-0 classes -->
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<%= "index.jsp?username=" + username %>">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= "asset.jsp?username=" + username %>">Asset</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= "profile.jsp?username=" + username %>">Profile</a>
        </li>
      </ul>
    </nav>
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8 mx-auto text-center">
          <div class="mb-4">
            <h1 class="display-4">Welcome to our School Asset Management System</h1>
          </div>
          <div>
            <p>Empower your government school with efficient asset management.</p>
            <p>Easily oversee vital resources like buildings, classrooms, and more.</p>
            <p>Keep track of the number of buildings, classrooms, and other essential facilities.</p>
            <p>Our system helps you ensure proper allocation, maintenance, and utilization of school assets, enhancing the quality of education and overall school management.</p>
          </div>
        </div>
      </div>
    </div>
    
  </div>
  
</body>
