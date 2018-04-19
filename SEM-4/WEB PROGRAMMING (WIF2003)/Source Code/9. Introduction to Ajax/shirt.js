// shirt.js
//  Ajax JavaScript code for the shirt.html document
//  Uses Dojo

// The function that builds the menu of colors
function buildMenu(type, data, evt) {
  var menuDOM = document.getElementById("colorselect");
  var nextColor, nextItem;

// Delete previous items in the color menu
  menuDOM.options.length = 0;

// Split the data into an array of colors
  var colors = data.split(', ');

// Go through the returned array of colors
  for (index = 0; index < colors.length; index++) {
    nextColor = colors[index];
    nextItem = new Option(nextColor);

// Add the new item to the menu
     try {
       menuDOM.add(nextItem, -1);
     }
     catch (e) {
       menuDOM.add(nextItem, null);
     }
  } 
}

// The function that calls bind to request data 
function getColors(size) {
  dojo.io.bind( {url: "getColors.php" + "?size=" + size,
                 load: buildMenu,
                 method: "GET",
                 mimetype: "text/plain"
                });
}

  


