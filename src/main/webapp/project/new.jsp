<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.112.5">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sidebars/">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <link href='https://fonts.googleapis.com/css?family=Reem Kufi' rel='stylesheet'>
    <script src="js/sidebars.js"></script>
    <link href="css/new.css" rel="stylesheet">
    <link href="css/sidebar.css" rel="stylesheet">
    <!-- Include your other JavaScript and CSS links here -->
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
    <div class="container d-flex flex-column text-center p-2 bg-body-tertiary custom-container">
      <!-- CARD ONE -->
      <div class="card text-center custom-card">
        <div class="card-header card-new-header">NEW</div>
        <div class="card-body card-new-body">
          <p class="card-text">Create new School ID to add a School</p>
          <button type="button" class="btn btn-bd-card-custom" data-bs-toggle="modal" data-bs-target="#exampleModal">create</button>
          <!-- Modal for "Create" -->
          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header modal-header-custom">
                  <h1 class="modal-title fs-5" id="exampleModalLabel">CREATE</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" style="background-color:white" aria-label="Close"></button>
                </div>
                <div class="modal-body modal-body-custom">
                  <form action="../createSchool.jsp" method="post">
                    <div class="mb-3">
                      <label for="school" class="form-label">School ID</label>
                      <input type="text" class="form-control" id="school" name="school">
                      <div id="test" class="form-text">Enter a new School Id to add new school.</div>
                    </div>
                    <button type="submit" value="submit" class="btn btn-bd-modal-custom">create</button>
                  </form>
                </div>
                <div class="modal-footer modal-footer-custom">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>
</html>
