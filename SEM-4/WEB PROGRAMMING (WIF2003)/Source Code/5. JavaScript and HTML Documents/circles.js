// circles.js
// This script illustrates the use of the methods for 
//  drawing circles.

function draw() {
  var dom = document.getElementById("myCanvas");
  if (dom.getContext) {
    var context = dom.getContext('2d');

// Draw the outer stroke circle
    context.beginPath();
    context.arc(200, 200, 100, 0, 2 * Math.PI, false);
    context.stroke();

// Draw the inner filled circle
    context.beginPath();
    context.arc(200, 200, 50, 0, 2 * Math.PI, false);
    context.fill();

// Draw Pac-Man 
    context.beginPath();
    context.arc(500, 200, 50, Math.PI/7, -Math.PI/7, false);
    context.lineTo(500, 200);
    context.fill();
  }
}
 