<?php
// getCityState.php 
//  Gets the form value from the "zip" widget, looks up the 
//  city and state for that zip code, and prints it for the
//  form
      
  $cityState = array("81611" => "Aspen, Colorado",
                     "81411" => "Bedrock, Colorado",
                     "80908" => "Black Forest, Colorado",
                     "80301" => "Boulder, Colorado",
                     "81127" => "Chimney Rock, Colorado",
                     "80901" => "Colorado Springs, Colorado",
                     "81223" => "Cotopaxi, Colorado",
                     "80201" => "Denver, Colorado",                     
                     "81657" => "Vail, Colorado",
                     "80435" => "Keystone, Colorado",
                     "80536" => "Virginia Dale, Colorado"
                     );
  $zip = $_GET["zip"];
  if (array_key_exists($zip, $cityState))
    print $cityState[$zip];
  else
    print " , ";
?>