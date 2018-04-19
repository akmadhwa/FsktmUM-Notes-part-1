// popcornA.js
//  Ajax JavaScript code for the popcornA.html document

/********************************************************/
// function getPlace
//  parameter: zip code
//  action: create the XMLHttpRequest object, register the
//          handler for onreadystatechange, prepare to send
//          the request (with open), and send the request,
//          along with the zip code, to the server
//  includes: the anonymous handler for onreadystatechange, 
//            which is the receiver function, which gets the 
//            response text, splits it into city and state,
//            and puts them in the document

function getPlace(zip) {
  var xhr = new XMLHttpRequest();

// Register the embedded handler function
  xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
      var result = xhr.responseText;
      var place = result.split(', ');
      if (document.getElementById("city").value == "")
        document.getElementById("city").value = place[0];
      if (document.getElementById("state").value == "")
        document.getElementById("state").value = place[1];
    }
  }
  xhr.open("GET", "getCityState.php?zip=" + zip);
  xhr.send(null);
}


