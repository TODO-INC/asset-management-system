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
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"> -->
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
  </head>
<body>
  <main class="d-flex flex-nowrap">
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="home" viewBox="0 0 16 16">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trello" viewBox="0 0 16 16">
      <path d="M14.1 0H1.903C.852 0 .002.85 0 1.9v12.19A1.902 1.902 0 0 0 1.902 16h12.199A1.902 1.902 0 0 0 16 14.09V1.9A1.902 1.902 0 0 0 14.1 0ZM7 11.367a.636.636 0 0 1-.64.633H3.593a.633.633 0 0 1-.63-.633V3.583c0-.348.281-.631.63-.633h2.765c.35.002.632.284.633.633L7 11.367Zm6.052-3.5a.633.633 0 0 1-.64.633h-2.78A.636.636 0 0 1 9 7.867V3.583a.636.636 0 0 1 .633-.633h2.778c.35.002.631.285.631.633l.01 4.284Z"/>
    </svg>
      </symbol>
      <symbol id="plus" viewBox="0 0 16 16">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
      <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
    </svg>
      </symbol>
      <symbol id="people-circle" viewBox="0 0 16 16">
        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
      </symbol>
      <symbol id="grid" viewBox="0 0 16 16">
        <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
      </symbol>
    </svg>
    <div class="d-flex flex-nowrap">
    <div class=" container-sm d-flex flex-column  p-2 bg-body-tertiary custom-sidebar">
    
        <a class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <span class="custom-title" >ASSET-MANAGER</span>
        </a>
        <hr style="background-color: whitesmoke;color: ghostwhite;height: 5px;">
        <ul class="nav nav-pills flex-column mb-auto">
          <li>
          <a href="view.html" class="nav-link btn-bd-sidebar-custom">
            <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
              Manage
            </a>
          </li>
          <li>
          <a href="new.html" class="nav-link btn-bd-sidebar-custom">
              <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#plus"></use></svg>
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
                  <form action="../Register" method="post">
                    <div class="mb-3">
                      <label for="school" class="form-label">School ID</label>
                      <input type="text" class="form-control" id="school" name="school" >
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
    <!-- CARD TWO -->
    <div class="card text-center custom-card">
      <div class="card-header card-new-header">VERIFY</div>
      <div class="card-body card-new-body">
        <p class="card-text">Update or Verify School ID to add a School</p>
        <button type="button" class="btn btn-bd-card-custom" data-bs-toggle="modal" data-bs-target="#verify">verify</button>
        <button type="button" class="btn btn-bd-card-custom" data-bs-toggle="modal" data-bs-target="#update">update</button>
        
        <!-- Modal for "Update" -->
        <div class="modal fade" id="update" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header modal-header-custom">
                <h1 class="modal-title fs-5" id="exampleModalLabel">UPDATE</h1>
                <button type="button" class="btn-close" style="background-color:white" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body modal-body-custom">
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
                            <legend>Updated Details</legend>
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
                          <button type="button" class="btn btn-bd-modal-custom">update</button>
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
                            <legend>Updated Details</legend>
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
                          <button type="button" class="btn btn-bd-modal-custom">update</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer modal-footer-custom">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">close</button>
              </div>
            </div>
          </div>
        </div>
        <!-- Modal for "Verify" -->
        <div class="modal fade" id="verify" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header modal-header-custom">
                <h1 class="modal-title fs-5" id="exampleModalLabel">VERIFY</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" style="background-color:white" aria-label="Close"></button>
              </div>
              <div class="modal-body modal-body-custom">
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
                          <button type="button" class="btn btn-bd-modal-custom">verify</button>
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
                          <button type="button" class="btn btn-bd-modal-custom">verify</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
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
  </div>
  </main>
</body>