// where.js
//   Show the coordinates of the mouse cursor position 
//   in an image and anywhere on the screen when the mouse
//   is clicked

// The event handler function to get and display the 
//  coordinates of the cursor, both in an element and 
//  on the screen

function findIt(evt) {
  document.getElementById("xcoor1").value = evt.clientX;
  document.getElementById("ycoor1").value = evt.clientY;
  document.getElementById("xcoor2").value = evt.screenX;
  document.getElementById("ycoor2").value = evt.screenY;
}
