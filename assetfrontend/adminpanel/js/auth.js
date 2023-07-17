const collapseElementList = document.querySelectorAll('.collapse')
const collapseList = [...collapseElementList].map(collapseEl => new bootstrap.Collapse(collapseEl))

function validateFormLogin() {
  let x = document.forms["login"]["user.name"].value;
  let y = document.forms["login"]["user.password"].value;
  if (x!="admin" && y!="test") {
    alert("Incorrect Username and Incorrect Password");
    return false;
  }
  else if (x!="admin") {
    alert("Incorrect Username");
    return false;
  }
  else if (y!="test") {
    alert("Incorrect Password");
    return false;
  }else{
    return true;
  }
}

function  validateFormSignup() {
  let schoolId = document.forms["signup"]["school.id"].value;
  let userName = document.forms["signup"]["user.name"].value;
  let userPass = document.forms["signup"]["user.password"].value;
  let userRePass = document.forms["signup"]["user.retype.password"].value;
  var x=0;
  if (schoolId != "#123") {
    alert("Incorrect School Id");
    x++;
    return false;
  }
  if (userName.length <= 8 ) {
    alert("Username length must be greater than 8");
    x++;
    return false;
  }
  if (userPass.length <=8) {
    alert("Password length must be greater than 8");
    x++;
    return false;
  }
  if(userPass != userRePass ){
    alert("Password must be same");
    x++;
    return false;
  }
  if(x === 0){
    return true;
  }
}