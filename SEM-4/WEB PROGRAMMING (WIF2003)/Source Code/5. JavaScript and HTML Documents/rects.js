// rects.js
// This script illustrates the use of the rectangle methods of 
//  the canvas element to draw two rectangles.

function draw() {
  var dom = document.getElementById("myCanvas");
  if (dom.getContext) {
    var context = dom.getContext('2d');
    context.fillRect(100, 100, 200, 200);
    context.clearRect(150, 150, 100, 100);
    context.strokeRect(180, 180, 40, 40);
    context.fillRect(195, 195, 10, 10);
  }
}
 