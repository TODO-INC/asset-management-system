<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
    <link href="css/asset.css" rel="stylesheet">
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
    <div class="container-md custom-container-asset">
      <div class="accordion custom-accordion" id="accordionAsset">
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-assetOne" aria-expanded="true" aria-controls="panelsStayOpen-assetOne">
              Building A &nbsp; <span class="badge rounded-pill text-bg-info">updated</span>
            </button>
          </h2>
          <div id="panelsStayOpen-assetOne" class="accordion-collapse collapse ">
            <div class="accordion-body">

              <div class="row g-3 mb-3 align-items-center">
                <div class="col-auto">
                  <label for="size" class="col-form-label">Size</label>
                </div>
                <div class="col-auto">
                  <input type="number" id="size" class="form-control">
                </div>
                <div class="col-auto">
                  <span class="form-text">
                    in Sq feet.
                  </span>
                </div>
                <div class="col-auto">
                  <label for="cost" class="col-form-label">Building cost</label>
                </div>
                <div class="col-auto">
                  <input type="number" id="cost" class="form-control">
                </div>
                <div class="col-auto">
                  <span  class="form-text">
                    in INR.
                  </span>
                </div>
              </div>
              <div class="row g-3 mb-2 align-items-center">
                <div class="col-auto">
                  <label for="fund" class="col-form-label"> Scheme </label>
                </div>
                <div class="col-4">
                  <input class = "form-control" type="text" id="fund">
                </div>
                <div class="col-3">
                  <span class="form-text">
                    Scheme/Fund-name used for building
                </div>
                <div class="col-auto">
                  <label for="inaug" class="col-form-label">Date of Inauguration</label>
                </div>
                <div class="col-auto">
                  <input id="inaug" type="date" class="form-control">
                </div>
              </div>

              <div class="row g-3 md-5 align-items-center">
                <div class="col-auto">
                  <label for="floor" class="col-form-label">Total Floor</label>
                </div>
                <div class="col-auto">
                  <input id="floor" type="number" class="form-control">
                </div>
                <div class="col-auto">
                  <label for="room" class="col-form-label">Total Rooms</label>
                </div>
                <div class="col-auto">
                  <input id="room" type="number" class="form-control">
                </div>
                <div class="col-auto">
                  <label for="class" class="col-form-label">Total Class</label>
                </div>
                <div class="col-auto">
                  <input id="class" type="number" class="form-control">
                </div>
                <div class="col-auto">
                  <label for="labs" class="col-form-label">Total Labs</label>
                </div>
                <div class="col-auto">
                  <input id="labs" type="number" class="form-control">
                </div>
              </div>


            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-assetTwo" aria-expanded="false" aria-controls="panelsStayOpen-assetTwo">
            Building B
            </button>
          </h2>
          <div id="panelsStayOpen-assetTwo" class="accordion-collapse collapse">
            <div class="accordion-body">
              <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-assetThree" aria-expanded="false" aria-controls="panelsStayOpen-assetThree">
            Ground A
            </button>
          </h2>
          <div id="panelsStayOpen-assetThree" class="accordion-collapse collapse">
            <div class="accordion-body">
              <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
