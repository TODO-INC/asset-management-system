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
      <button type="submit" class="button">Search</button>
    </div>
  </div>
  
  
</form>
</div>
  <div>
    <div class="card">
    <img src="path/to/image1.jpg" alt="Card Image 1">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
  <div class="card">
    <img src="path/to/image2.jpg" alt="Card Image 2">
    <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
  <div class="card">
    <img src="path/to/image3.jpg" alt="Card Image 3">
    <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    <div class="card">
    <img src="path/to/image3.jpg" alt="Card Image 3">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    <div class="card">
    <img src="path/to/image3.jpg" alt="Card Image 3">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    <div class="card">
    <img src="path/to/image3.jpg" alt="Card Image 3">
      <p>About school</p>
    <div class="button-container">
    <button>More</button>
    <button>Doc</button>
    </div>
  </div>
    
  </div>
  </div>
</main>
</body>