// dynColors.js
//   Illustrates dynamic foreground and background colors

// The event handler function to dynamically set the 
//  color of background or foreground 

function setColor(where, newColor) {
  if (where == "background")
    document.body.style.backgroundColor = newColor;
  else
    document.body.style.color = newColor;
}
