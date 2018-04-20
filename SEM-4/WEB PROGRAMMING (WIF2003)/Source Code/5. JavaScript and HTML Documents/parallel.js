// parallel.js
// This script illustrates the use of the methods for 
//  drawing lines by drawing a parallelogram.

function draw() {
  var dom = document.getElementById("myCanvas");
  if (dom.getContext) {
    var context = dom.getContext('2d');
    context.beginPath();
    context.moveTo(50, 150);
    context.lineTo(100, 100);
    context.lineTo(200, 100);
    context.lineTo(150, 150);
    context.lineTo(50, 150);
    context.stroke();
  }
}
 