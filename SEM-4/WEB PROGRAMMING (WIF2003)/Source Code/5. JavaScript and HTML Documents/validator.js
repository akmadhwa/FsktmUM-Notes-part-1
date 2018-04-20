// validator.js
//   An example of input validation using the change and submit 
//   events

// The event handler function for the name text box

function chkName() {
  var myName = document.getElementById("custName");

// Test the format of the input name 
//  Allow the spaces after the commas to be optional
//  Allow the period after the initial to be optional

  var pos = myName.value.search(
            /^[A-Z][a-z]+, ?[A-Z][a-z]+, ?[A-Z]\.?$/);

  if (pos != 0) {
    alert("The name you entered (" + myName.value + 
          ") is not in the correct form. \n" +
          "The correct form is: " +
          "last-name, first-name, middle-initial \n" +
          "Please go back and fix your name");
    return false;
  } else
    return true;
}

// The event handler function for the phone number text box

function chkPhone() {
  var myPhone = document.getElementById("phone");

// Test the format of the input phone number

  var pos = myPhone.value.search(/^\d{3}-\d{3}-\d{4}$/);

  if (pos != 0) {
    alert("The phone number you entered (" + myPhone.value +
          ") is not in the correct form. \n" +
          "The correct form is: ddd-ddd-dddd \n" +
          "Please go back and fix your phone number");
    return false;
  } else
    return true;
}
