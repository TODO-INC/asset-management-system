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
    <link rel="stylesheet" href="css/auth.css">
  </head>
<body class="p-3 m-0 border-0 bd-example m-0 border-0">
<div class="card text-center custom-card ">
    <div class="card-header custom-card-header">
        Welcome Back
    </div>
    <div class="card-body custom-card-body">
        <p>
            <button class="btn btn-primary collapsed btn-base-auth" type="button" data-bs-toggle="collapse" data-bs-target="#collapseLogin" aria-expanded="false" aria-controls="collapseLogin">
                Already have an account
            </button>
        </p>
        <div class="collapse" id="collapseLogin">
            <form name="login" action="../Login" class="form-signin" onsubmit="return validateFormLogin()" method="post" >
                <div class="user.name">
                    <input type="text" name="user.name"  class="form-control" id="user.name" placeholder="username" required>
                    <label for="user.name">User Name</label>
                </div>
                <div class="user.password">
                    <input type="password" name="user.password" class="form-control" id="user.password" placeholder="Password" required>
                    <label for="user.password">Password</label>
                </div>
                <button class="btn btn-bd-primary btn-auth w-100 py-2" type="submit">Log in</button>
            </form>
        </div>
    
        <p><button class="btn btn-primary btn-base-auth" id="signup-collapse" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSignup" aria-expanded="true" aria-controls="collapseSignup"> 
            Didn't have an account ? Sign Up
            </button>
        </p>
        <div class="collapse" id="collapseSignup">
            <form name="signup" id="signup-form" class="form-signup" action="../SignUp"  method="post">
                <div class="form-floating">
                    <input name="school.id" type="text" class="form-control" id="school.id"  required>
                    <label for="school.id">School ID</label>
                </div>
                <div class="form-floating">
                    <input name="user.name" type="text" class="form-control" id="user.name"  required>
                    <label for="user.name">User Name</label>
                </div>
                <div class="form-floating">
                    <input name="user.password" type="password" class="form-control " id="user.password" required>
                    <label for="user.password">Password</label>
                </div>
                <div class="form-floating ">
                    <input name="user.retype.password" type="password" class="form-control " id="user.retype.password"  required>
                    <label for="user.retype.password">Confirm Password</label>
                </div>
                <button class=" btn btn-bd-primary btn-auth w-100 py-2" type="submit">Sign up</button>
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!--<script src="js/auth.js"></script>-->
</body>
</html>