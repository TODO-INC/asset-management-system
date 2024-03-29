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
    <link href="css/form.css" rel="stylesheet">
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
</div>
  <div class="container form-algin">

    <form method = "POST" action="../Form">
    <input type="hidden" name="username" id="username" value="<%= request.getParameter("username") %>">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">School Name</label>
        <input type="text" class="form-control" id="school_name" name="school_name" aria-describedby="emailHelp" required>
        
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">School type</label>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="school_type" id="school_type" value="SSLC" required>
          <label class="form-check-label" for="school_type">
            SSLC
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="school_type" id="school_type" value="HSC" required>
          <label class="form-check-label" for="school_type">
            HSC
          </label>
        </div>
        
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Management Type</label>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="management_type" id="management_type" value="Government" required>
          <label class="form-check-label" for="management type">
            Government
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="management_type" id="management_type" value="Government Aided" required>
          <label class="form-check-label" for="management type">
            Government Aided
          </label>
        </div>
      </div>
      <div class="mb-3">
        <label for="distric" class="form-label">District</label>
        <select class="form-select" aria-label="Default select example"  id="district" name="district" required>
          <option selected>Select District </option>
          <option value="One">One</option>
          <option value="Two">Two</option>
          <option value="Three">Three</option>
        </select>
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="taluka">Taluka</label>
        <select class="form-select" aria-label="Default select example" id="taluka" name="taluka" required>
          <option selected>Select Taluka</option>
          <option value="One">One</option>
          <option value="Two">Two</option>
          <option value="Three">Three</option>
        </select>
        
      </div>
      <div class="mb-3">
        <label class="form-label" for="address">Address</label>
        <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
      </div>
      <div class="mb-3">
        <label class="form-label" for="noOfbuilding">No of Buildings</label>
        <input class="form-control" type="number" id="noOfbuilding" name="noOfbuilding" min=1 required>
      </div>
      <div class="mb-3">
        <label class="form-label" for="school_num">School Number</label>
        <input class="form-control" type="text" id="school_num" name="school_num" required>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
  
</body>
