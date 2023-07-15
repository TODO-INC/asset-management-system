<?php
include "libs/load.php";
?>

<head>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head>
    <script src="vendor/assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.112.5">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"> -->
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sidebars/">
    <link href="vendor/assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/sidebars.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="vendor/assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/sidebars.js"></script></body>
    <link href="css/view.css" rel="stylesheet">
  </head>
</head>
<body>
<main class="d-flex flex-nowrap">
  <?php load_temp("sidebar.php"); ?>
  <div class="container-md d-flex flex-column  p-2 bg-body-tertiary custom-container">
    

<div class="container">
<form>
  <div class="wrapper">
    <p>Find school</p>
    <div class="search-container">
      <input type="text" class="search" placeholder="SchoolID">
      <input type="text" class="date-from" placeholder="District">
      <input type="text" class="date-to" placeholder="Taluk">
      <button type="submit" class="btn btn-primary">Search</button>
    </div>
  </div>
  
  
</form>
</div>
  <div class="container">
    <div class="card">
    <img src="image\school.jpg" alt="Card Image 1">
      <p>About school</p>
    <div class="button-container">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">More</button>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#doc">Doc</button>
    </div>
  </div>
  <div class="card">
    <img src="image\school.jpg" alt="Card Image 2">
    <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
  <div class="card">
    <img src="image\school.jpg" alt="Card Image 3">
    <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    <div class="card">
    <img src="image\school.jpg" alt="Card Image 3">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    <div class="card">
    <img src="image\school.jpg" alt="Card Image 3">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    <div class="card">
    <img src="image\school.jpg" alt="Card Image 3">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    
  </div>
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form>
  <fieldset disabled>
    <legend>Disabled fieldset example</legend>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Disabled input</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Disabled input</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Disabled input</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
    </div>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Disabled input</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
    </div>
    <div class="mb-3">
      <label for="disabledSelect" class="form-label">Disabled select menu</label>
      <select id="disabledSelect" class="form-select">
        <option>Disabled select</option>
      </select>
    </div>
    <div class="mb-3">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="disabledFieldsetCheck" disabled>
        <label class="form-check-label" for="disabledFieldsetCheck">
          Can't check this
        </label>
      </div>
    </div>
    
  </fieldset>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade " id="doc" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="accordion" id="accordionPanelsStayOpenExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
      <div class="accordion-body">
              <embed
          src="document.pdf"
          type="application/pdf"
          width="100%"
          height="100%"
          />
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        school2
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
      <div class="accordion-body">
      <embed
          src="document.pdf"
          type="application/pdf"
          width="100%"
          height="100%"
          />
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse">
      <div class="accordion-body">
      <embed
          src="document.pdf"
          type="application/pdf"
          width="100%"
          height="100%"
          />
        
      </div>
    </div>
  </div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>


  </div>
</main>
</body>