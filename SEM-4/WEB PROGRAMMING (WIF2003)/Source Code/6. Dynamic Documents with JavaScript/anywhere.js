// anywhere.js
//   Display a message when the mouse button is pressed,
//   no matter where it is on the screen 

// The event handler function to display the message

function displayIt(evt) {
  var dom = document.getElementById("message");
  dom.style.left = (evt.clientX - 130) + "px";
  dom.style.top = (evt.clientY - 25) + "px";
  dom.style.visibility = "visible";
}

// ****************************************************
// The event handler function to hide the message

function hideIt() {
  document.getElementById("message").style.visibility =
      "hidden";
}
