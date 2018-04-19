<!-- access_cars.php
     A PHP script to access the cars database
     through MySQL
     -->
<html>
<head>
<title> Access the cars database with MySQL </title>
</head>
<body>
<?php

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

// Get the query and clean it up (delete leading and trailing 
// whitespace and remove backslashes from magic_quotes_gpc)

$query = $_POST['query'];
trim($query);
$query = stripslashes($query);

// Display the query, after fixing html characters

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
    for ($index = 0; $index < $num_fields; $index++) {
        $value = htmlspecialchars($values[2 * $index + 1]);
        print "<th>" . $value . "</th> ";
    }

    print "</tr>";
    $row = mysql_fetch_array($result);
}
print "</table>";
?>
</body>
</html>
