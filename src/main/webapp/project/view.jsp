<!doctype html>
<html lang="en" data-bs-theme="auto">
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
      <div class="container custom-container">
        <div class="container search-bar-container ">
          <form>
            <div class="wrapper searchbar-custom">
              <div class="navbar"></div>
              <div class="navbar"></div>
              <div class="search-container">
                <input type="text" class="search" placeholder="SCHOOL ID">
                <input type="text" class="date-from" placeholder="District">
                <input type="text" class="date-to" placeholder="Taluk">
                <button type="submit" class="btn btn-bd-modal-custom">Search</button>
              </div>
            </div>
          </form>
        </div>
      </div>
      
      <div class="container">
        <div class="card custom-card">
          <p>ABC School</p>
          <div class="button-container">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">More</button>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#doc">Doc</button>
          </div>
        </div>
        <div class="card custom-card">
          <p>XYZ School</p>
          <div class="button-container">
            <button>More</button>
            <button>Doc</button>
          </div>
        </div>
        <div class="card custom-card">
          <p>IJK School</p>
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
              <div class="accordion accordion-flush" id="accordionFlush">
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="true" aria-controls="flush-collapseOne">
                      Building A
                    </button>
                  </h2>
                  <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlush">
                    <div class="accordion-body">
                      <embed
                      src="resources/document.pdf"
                      type="application/pdf"
                      width="100%"
                      height="100%"
                      />
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseOne">
                      Building B
                    </button>
                  </h2>
                  <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlush">
                    <div class="accordion-body">
                      <embed
                      src="resources/document.pdf"
                      type="application/pdf"
                      width="100%"
                      height="100%"
                      />
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseTwo">
                      Building C
                    </button>
                  </h2>
                  <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlush">
                    <div class="accordion-body">
                      <embed
                      src="resources/document.pdf"
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
            </div>
          </div>
        </div>
      </div>
      
      
    </div>
  </main>
</body>