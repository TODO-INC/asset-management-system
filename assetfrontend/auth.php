<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Asset Manager</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link href='https://fonts.googleapis.com/css?family=Reem Kufi' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Aldrich' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Glegoo' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=League Spartan' rel='stylesheet'>
    <link rel="stylesheet" href="adminpanel/css/auth.css">
  </head>
<body class="p-3 m-0 border-0 bd-example m-0 border-0">
<div class="card text-center custom-card ">
    <div class="card-header">
        Welcome Back
    </div>
    <div class="card-body">
        <p>
            <button class="btn btn-primary collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseLogin" aria-expanded="false" aria-controls="collapseLogin">
                Already have an account
            </button>
        </p>
        <div class="collapse" id="collapseLogin">
            <form name="login" action="/assetmanagement/assetfrontend/success.php" class="form-signin" onsubmit="return validateFormLogin()" method="post" >
                <div class="form-floating">
                    <input type="text" name="user.name"  class="form-control" id="floatingInput" placeholder="name@example.com" required>
                    <label for="floatingInput">User Name</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="user.password" class="form-control" id="floatingPassword" placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                </div>
                <button class="btn btn-bd-primary btn-auth w-100 py-2" type="submit">Log in</button>
            </form>
        </div>
    
        <p><button class="btn btn-primary collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSignup" aria-expanded="false" aria-controls="collapseSignup"> 
            Didn't have an account ? Sign Up
            </button>
        </p>
        <div class="collapse" id="collapseSignup">
            <form name="signup" id="signup-form" class="form-signup" action="/assetmanagement/assetfrontend/success.php"  method="post">
                <div class="form-floating">
                    <input name="school.id" type="text" class="form-control" id="school.id" placeholder="name@example.com" required>
                    <label for="floatingInput">School ID</label>
                </div>
                <div class="form-floating">
                    <input name="user.name" type="text" class="form-control" id="user.name" placeholder="name@example.com" required>
                    <label for="floatingInput">User Name</label>
                </div>
                <div class="form-floating">
                    <input name="user.password" type="password" class="form-control " id="user.password" placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                </div>
                <div class="form-floating ">
                    <input name="user.retype.password" type="password" class="form-control " id="user.retype.password" placeholder="Password" required>
                    <label for="user.retype.password">Retype Password</label>
                </div>
                <button class=" btn btn-bd-primary btn-auth w-100 py-2" type="submit">Sign up</button>
            </form>
            
    <script src="adminpanel/js/auth.js"> </script>
</div>
        </div>
</div>
</body>
</html>

<!-- onsubmit="return validateFormSignup()"  -->