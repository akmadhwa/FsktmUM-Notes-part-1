// stacking.js
//   Illustrates dynamic stacking of images

var topp = "plane3";

// The event handler function to move the given element
//  to the top of the display stack

function toTop(newTop) {

// Set the two dom addresses, one for the old top 
//  element and one for the new top element 
  var domTop = document.getElementById(topp).style;
  var domNew = document.getElementById(newTop).style;

// Set the zIndex properties of the two elements, and
//  reset top to the new top
  domTop.zIndex = "0";
  domNew.zIndex = "10";
  topp = newTop;
}
