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
    <link href="css/new.css" rel="stylesheet">
  </head>
</head>
<body>
  <main class="d-flex flex-nowrap">
    <?php load_temp("sidebar.php"); ?>
    <div class="container d-flex flex-column text-center p-2 bg-body-tertiary custom-container">
      <!-- CARD ONE -->
      <div class="card text-center custom-card">
        <div class="card-header">NEW</div>
        <div class="card-body">
          <p class="card-text">Create new School ID to add a School</p>
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">create</button>
          <!-- Modal for "Create" -->
          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="exampleModalLabel">Create</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form>
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">School ID</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                      <div id="emailHelp" class="form-text">Enter a new School Id to add new school.</div>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">CREATE</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <!-- CARD TWO -->
    <div class="card text-center custom-card">
      <div class="card-header">Verification</div>
      <div class="card-body">
        <p class="card-text">Update or Verify School ID to add a School</p>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verify">verify</button>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#update">update</button>
        
        <!-- Modal for "Update" -->
        <div class="modal fade" id="update" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">UPDATE</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <div class="accordion accordion-flush" id="accordionFlushTwo">
                  <div class="accordion-item">
                    <h2 class="accordion-header">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        XYZ School
                      </button>
                    </h2>
                    <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushTwo">
                      <div class="accordion-body">
                        <form>
                          <fieldset disabled>
                            <legend>updated details</legend>
                            <div class="mb-3">
                              <label for="disabledTextInput" class="form-label">School name</label>
                              <input type="text" id="disabledTextInput" class="form-control" placeholder="Name">
                            </div>
                            <div class="mb-3">
                              <label for="disabledSelect" class="form-label">District</label>
                              <select id="disabledSelect" class="form-select">
                                <option>District 1</option>
                              </select>
                            </div>
                          </fieldset>
                          <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Confirm</label>
                          </div>
                          <button type="button" class="btn btn-primary">UPDATE</button>
                        </form>
                      </div>
                    </div>
                  </div>

                  <div class="accordion-item">
                    <h2 class="accordion-header">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseOne">
                        ABC School
                      </button>
                    </h2>
                    <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushTwo">
                      <div class="accordion-body">
                        <form>
                          <fieldset disabled>
                            <legend>updated details</legend>
                            <div class="mb-3">
                              <label for="disabledTextInput" class="form-label">School name</label>
                              <input type="text" id="disabledTextInput" class="form-control" placeholder="Name">
                            </div>
                            <div class="mb-3">
                              <label for="disabledSelect" class="form-label">District</label>
                              <select id="disabledSelect" class="form-select">
                                <option>District 1</option>
                              </select>
                            </div>
                          </fieldset>
                          <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Confirm</label>
                          </div>
                          <button type="button" class="btn btn-primary">UPDATE</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
        <!-- Modal for "Verify" -->
        <div class="modal fade" id="verify" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Verify</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <div class="accordion accordion-flush" id="accordionFlushOne">
                  <div class="accordion-item">
                    <h2 class="accordion-header">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOneOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        XYZ School
                      </button>
                    </h2>
                    <div id="flush-collapseOneOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushOne">
                      <div class="accordion-body">
                        <form>
                          <fieldset disabled>
                            <legend>Details</legend>
                            <div class="mb-3">
                              <label for="disabledTextInput" class="form-label">School name</label>
                              <input type="text" id="disabledTextInput" class="form-control" placeholder="Name">
                            </div>
                            <div class="mb-3">
                              <label for="disabledSelect" class="form-label">District</label>
                              <select id="disabledSelect" class="form-select">
                                <option>District 1</option>
                              </select>
                            </div>
                          </fieldset>
                          <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Confirm</label>
                          </div>
                          <button type="button" class="btn btn-primary">Verify</button>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item">
                    <h2 class="accordion-header">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOneTwo" aria-expanded="false" aria-controls="flush-collapseOne">
                        ABC School
                      </button>
                    </h2>
                    <div id="flush-collapseOneTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushOne">
                      <div class="accordion-body">
                        <form>
                          <fieldset disabled>
                            <legend>Details</legend>
                            <div class="mb-3">
                              <label for="disabledTextInput" class="form-label">School name</label>
                              <input type="text" id="disabledTextInput" class="form-control" placeholder="Name">
                            </div>
                            <div class="mb-3">
                              <label for="disabledSelect" class="form-label">District</label>
                              <select id="disabledSelect" class="form-select">
                                <option>District 1</option>
                              </select>
                            </div>
                          </fieldset>
                          <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Confirm</label>
                          </div>
                          <button type="button" class="btn btn-primary">Verify</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </main>
</body>