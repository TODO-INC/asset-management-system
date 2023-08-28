function talukenbale(){
  var check=document.getElementById('dis');
  var tal=document.getElementById('taluk');
  if(check.value===""){
    tal.disabled = true;
  }
  else{
    tal.disabled = false;
  }
}
function addenable(){
  var check=document.getElementById('taluk');
  var add=document.getElementById('add');
  if(check.value===""){
    add.disabled = true;
  }
  else{
    add.disabled = false;
  }
}

 var pin=document.getElementById('pin');
 var year=document.getElementById('yearSelect');
 var snumber=document.getElementById('snumber');
 function validatepin(){
   const check=pin.value;
   if((check.length)!=6){
    pinError.textContent="Please enter correct pin number";
    pin.style.border = "1px solid red";
   }
   else{
    pinError.textContent = ""; 
    pin.style.border = "1px solid green";
   }
 }
 function validyear(){
  const check=year.value;
  const currentYear = new Date().getFullYear();
  const Minyear=1000;
  if(check>=Minyear&&check<=currentYear){
    yearError.textContent="";
    year.style.border = "1px solid green";
    
  }
  else{
    yearError.textContent="please enter valid year";
    year.style.border = "1px solid red";
  }
 }
 function containsNumber(inputString) {
  return /\d/.test(inputString);
}

function containsSpecialChar(inputString) {
  return /[!@#$%^&*(),.?":{}|<>]/.test(inputString); 
}

function containsLetter(inputString) {
  return /[a-zA-Z]/.test(inputString); 
}
function validsnumbers(){
  const check=snumber.value;
  if(containsNumber(check) && containsSpecialChar(check) && containsLetter(check)){
    snumError.textContent="";
    snumber.style.border = "1px solid green";
  }
  else{
    snumError.textContent="please enter valid school number";
    snumber.style.border = "1px solid red";
  }

}
function validateForminfo(){
  alert("Please enter");
}
 

 pin.addEventListener('input', validatepin);
 year.addEventListener('input', validyear);
 snumber.addEventListener('input',validsnumbers);