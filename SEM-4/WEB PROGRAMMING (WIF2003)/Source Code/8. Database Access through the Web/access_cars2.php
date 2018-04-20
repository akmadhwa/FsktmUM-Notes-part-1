<!-- access_cars2.php
     A PHP script to both get a query from the user and
     access the cars database through MySQL to get and
     display the result of the query.
     -->
<html>
  <head>
    <title> Access the cars database with MySQL </title>
  </head>
  <body>
<?php
$stage = $_POST["stage"];
if (!IsSet($stage)) {
?>
    <p>
      Please enter your query:
      <br />
      <form  method = "POST"  action = "access_cars2.php" >
        <textarea  rows = "2"  cols = "80"  name = "query"> 
        </textarea> 
        <br /><br />
        <input type = "hidden"  name = "stage"  value = "1" />
        <input type = "submit"  value = "Submit request" />
      </form>
    </p>
<?php
} else {  // $stage was set, so process the query

// Connect to MySQL

  $db = mysql_connect("localhost", "rws", "");
  if (!$db) {
     print "Error - Could not connect to MySQL";
     exit;
  }

// Select the cars database

  $er = mysql_select_db("cars");
  if (!$er) {
    print "Error - Could not select the cars database";
    exit;
  }

// Clean up the given query (delete leading and trailing whitespace)

  $query = $_POST['query'];
  trim($query);

// Fix the query for browser display and display it

  $query_html = htmlspecialchars($query);
  print "<p> <b> The query is: </b> " . $query_html . "</p>";

// Execute the query

  $result = mysql_query($query);
  if (!$result) {
    print "Error - the query could not be executed";
    $error = mysql_error();
    print "<p>" . $error . "</p>";
    exit;
  }

// Display the results in a table

  print "<table><caption> <h2> Query Results </h2> </caption>";
  print "<tr align = 'center'>";

// Get the number of rows in the result, as well as the first row
//  and the number of fields in the rows

  $num_rows = mysql_num_rows($result);
  $row = mysql_fetch_array($result);
  $num_fields = mysql_num_fields($result);

// Produce the column labels

  $keys = array_keys($row);
  for ($index = 0; $index < $num_fields; $index++) 
    print "<th>" . $keys[2 * $index + 1] . "</th>";

  print "</tr>";

// Output the values of the fields in the rows

  for ($row_num = 0; $row_num < $num_rows; $row_num++) {
    print "<tr align = 'center'>";
    $values = array_values($row);
    for ($index = 0; $index < $num_fields; $index++){
      $value = htmlspecialchars($values[2 * $index + 1]);
      print "<th>" . $value . "</th> ";
    }

    print "</tr>";
    $row = mysql_fetch_array($result);
  }
  print "</table>";
}  //  end of the else clause for if (!IsSet($stage...
?>
</body>
</html>
