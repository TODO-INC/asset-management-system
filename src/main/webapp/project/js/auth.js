// const collapseElementList = document.querySelectorAll('.collapse')
// const collapseList = [...collapseElementList].map(collapseEl => new bootstrap.Collapse(collapseEl))

// function validateFormLogin() {
//   let x = document.forms["login"]["user.name"].value;
//   let y = document.forms["login"]["user.password"].value;
//   if (x!="admin" && y!="test") {
//     alert("Incorrect Username and Incorrect Password");
//     return false;
//   }
//   else if (x!="admin") {
//     alert("Incorrect Username");
//     return false;
//   }
//   else if (y!="test") {
//     alert("Incorrect Password");
//     return false;
//   }else{
//     return true;
//   }
// }



// const passwordInput = document.getElementById('user.password');
// const confirmPasswordInput = document.getElementById('user.retype.password');

// function checkPasswordsMatch() {
//   const password = passwordInput.value;
//   const confirmPassword = confirmPasswordInput.value;

//   if (password !== confirmPassword) {
//     passwordInput.classList.add('error');
//     confirmPasswordInput.classList.add('error');
//   } else {
//     passwordInput.classList.remove('error');
//     confirmPasswordInput.classList.remove('error');
//   }
// }

// // Event listeners to check for password match on input change
// passwordInput.addEventListener('input', checkPasswordsMatch);
// confirmPasswordInput.addEventListener('input', checkPasswordsMatch);

// // Event listener to prevent form submission if passwords don't match
// const signupForm = document.getElementById('signup-form');
// signupForm.addEventListener('submit', function (event) {
//   if (passwordInput.value !== confirmPasswordInput.value) {
//     event.preventDefault();
//     alert('Passwords do not match. Please try again.');
//   }
// });


// const passwordInput = document.getElementById('password');
// const confirmPasswordInput = document.getElementById('confirm-password');
// const signupForm = document.getElementById('signup-form');
// const collapseButton = document.getElementById('collapse-button');

// function checkPasswordsMatch() {
//   const password = passwordInput.value;
//   const confirmPassword = confirmPasswordInput.value;

//   if (password !== confirmPassword) {
//     passwordInput.classList.add('error');
//     confirmPasswordInput.classList.add('error');
//   } else {
//     passwordInput.classList.remove('error');
//     confirmPasswordInput.classList.remove('error');
//   }
// }




// const passwordInput = document.getElementById('user.password');
// const confirmPasswordInput = document.getElementById('user.retype.password');
// const signupForm = document.getElementById('signup-form');
// const collapseButton = document.getElementById('signup-collapse');

// function checkPasswordsMatch() {
//   const password = passwordInput.value;
//   const confirmPassword = confirmPasswordInput.value;

//   if (password !== confirmPassword) {
//     passwordInput.classList.add('error');
//     confirmPasswordInput.classList.add('error');
//   } else {
//     passwordInput.classList.remove('error');
//     confirmPasswordInput.classList.remove('error');
//   }
// }

// function handleSubmit(event) {
//   if (passwordInput.value !== confirmPasswordInput.value) {
//     event.preventDefault();
//     alert('Passwords do not match. Please try again.');
//   }
// }

// // Event listeners to check for password match on input change
// passwordInput.addEventListener('input', checkPasswordsMatch);
// confirmPasswordInput.addEventListener('input', checkPasswordsMatch);

// // Event listener to prevent form submission if passwords don't match
// signupForm.addEventListener('submit', handleSubmit);

// // Event listener to handle form collapse
// collapseButton.addEventListener('click', function () {
//   const formContainer = document.getElementById('collapseSignup');
//   formContainer.classList.toggle('collapsed');
// });


// Use Bootstrap's collapse events to toggle the form container
// const collapseButton = document.getElementById('signup-collapse');
// const formContainer = document.getElementById('collapseSignup');

// collapseButton.addEventListener('click', function () {
//   $(formContainer).collapse('toggle');
// });

// // The rest of the JavaScript code for password verification remains the same
// const passwordInput = document.getElementById('user.password');
// const confirmPasswordInput = document.getElementById('user.retype.password');
// const signupForm = document.getElementById('signup-form');

// function checkPasswordsMatch() {
//   const password = passwordInput.value;
//   const confirmPassword = confirmPasswordInput.value;

//   if (password !== confirmPassword) {
//     passwordInput.classList.add('error');
//     confirmPasswordInput.classList.add('error');
//   } else {
//     passwordInput.classList.remove('error');
//     confirmPasswordInput.classList.remove('error');
//   }
// }

// function handleSubmit(event) {
//   if (passwordInput.value !== confirmPasswordInput.value) {
//     event.preventDefault();
//     alert('Passwords do not match. Please try again.');
//   }
// }

// // Event listeners to check for password match on input change
// passwordInput.addEventListener('input', checkPasswordsMatch);
// confirmPasswordInput.addEventListener('input', checkPasswordsMatch);

// // Event listener to prevent form submission if passwords don't match
// signupForm.addEventListener('submit', handleSubmit);




// Use Bootstrap's collapse events to toggle the form container
const collapseButton = document.getElementById('signup-collapse');
const formContainer = document.getElementById('collapseSignup');

collapseButton.addEventListener('click', function () {
  $(formContainer).collapse('toggle');
});

// The rest of the JavaScript code for password verification remains the same
const passwordInput = document.getElementById('user.password');
const confirmPasswordInput = document.getElementById('user.retype.password');
const signupForm = document.getElementById('signup-form');
const schoolIdInput = document.getElementById('school.id');
const userNameInput = document.getElementById('user.name');

function verifyUserName() {
  const name = userNameInput.value;
  if (name.length <= 7) {
    userNameInput.classList.add('error');
  } else {
    userNameInput.classList.remove('error');
  }
}

function verifySchoolId() {
  const school = schoolIdInput.value;

  if (school[0] !== "#" || school.length !== 7) {
    schoolIdInput.classList.add('error');
  } else {
    schoolIdInput.classList.remove('error');
  }
}

function checkPasswordsMatch() {
  const password = passwordInput.value;
  const confirmPassword = confirmPasswordInput.value;

  if (password !== confirmPassword) {
    passwordInput.classList.add('error');
    confirmPasswordInput.classList.add('error');
  } else {
    passwordInput.classList.remove('error');
    confirmPasswordInput.classList.remove('error');
  }
}

function handleSubmit(event) {
  if (passwordInput.value !== confirmPasswordInput.value) {
    event.preventDefault();
    alert('Passwords do not match. Please try again.');
  }
  if(schoolIdInput.value[0] !== "#" || schoolIdInput.value.length !== 7){
    event.preventDefault();
    alert('Invalid school ID. Please try again.');
  }
  if(userNameInput.value.length <= 7){
    event.preventDefault();
    alert('User Name is too short. Please try again.');
  }
}

// Event listeners to check for password match on input change
//passwordInput.addEventListener('input', checkPasswordsMatch);
//confirmPasswordInput.addEventListener('input', checkPasswordsMatch);
schoolIdInput.addEventListener('input', verifySchoolId);
userNameInput.addEventListener('input', verifyUserName);

// Event listener to prevent form submission if passwords don't match
signupForm.addEventListener('submit', handleSubmit);


