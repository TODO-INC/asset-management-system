<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.112.5">
    <title>Signup</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">

    
    <script src="vendor/assets/dist/js/bootstrap.bundle.min.js"></script>

    

    <link href="vendor/assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/signup.css" rel="stylesheet">
  </head>
  <body class="bg-body-tertiary">
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>
    
<div class="container">
  <main>
    <div class="row g-5 ">
      <div class="col-md-9 col-lg-8">
        <form class="needs-validation form-signup" novalidate>
          <div class="row g-3">
            <div class="col-sm-5">
              <label for="firstName" class="form-label">SchoolName</label><br>
              <input type="text" class="form-control" id="Schoolname" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            <div class="col-12">
              <label  class="form-label">SchoolType</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="stype" id="stype">
                    <label class="form-check-label" for="stype">
                      SSLC
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="stype" id="stype">
                    <label class="form-check-label" for="stype">
                      HSC
                    </label>
                </div>
            </div>

            <div class="col-12">
              <label  class="form-label">Management Type</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="mantype" id="mantype">
                    <label class="form-check-label" for="mantype">
                      Goverment
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio"class="form-control" name="mantype" id="mantype">
                    <label class="form-check-label" for="mantype">
                      Goverment Aided
                    </label>
                </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Distric</label><br>
              <select class="form-select" id="dis" onchange="talukenbale()" required>
                <option value="" default>Select Distric</option>
                <option value="Madurai">Madurai</option>
                <option value="Thoothukudi">Thoothukudi</option>
                <option value="Virudhunagar">Virudhunagar</option>
              </select>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Taluka</label><br>
              <select class="form-select" id="taluk" onchange="addenable()" disabled required>
                <option value="" default>Select Taluka</option>
                <option value="banana">xxxx</option>
                <option value="orange">yyyyy</option>
                <option value="grape">zzzzzz</option>
              </select>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">Address</label><br>
              <textarea id="add" name="add" rows="4" cols="40"  disabled required></textarea><br>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>
          </div><br>

          <label for="buildingCount">Enter the number of buildings:</label><br>
          <input type="number" id="buildingCount" name="buildingCount" class="form-control" min="0" step="1" required><br>
          <label for="buildingCount">Pincode:</label><br>
          <input type="number" id="pin" name="pin" class="form-control" min="0" step="1" required>
          <span id="pinError" style="color: red;"></span><br>
          <label for="yearSelect">Enter started a Year:</label><br>
          <input type="text" id="yearSelect" class="form-control" name="year" required>
          <span id="yearError" style="color: red;"></span>


          <div class="my-3">
          <label for="profileImg">Upload School Profile Image:</label><br>
          <input type="file" id="profileImg" class="form-control" accept="image/*" required>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
            <label for="buildingCount">Enter school number:</label>
            <input type="text" id="snumber" name="snumber" class="form-control" min="0" step="1" required>
            <span id="snumError" style="color: red;"></span>
            </div>
          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
        </form>
      </div>
    </div>
  </main>
  
</div>
</html>
<script src="js/signup.js"></script>
