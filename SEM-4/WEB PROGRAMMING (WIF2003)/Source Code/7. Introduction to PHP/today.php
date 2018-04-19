<!DOCTYPE html>
<!-- today.php - A trivial example to illustrate a php document -->
<html lang = "en">
  <head> 
    <title> today.php </title>
    <meta charset = "utf-8" />
  </head>
  <body>
    <p>
      <?php
        print "<b>Welcome to my home page <br /> <br />";
        print "Today is:</b> ";
        print date("l, F jS");
        print "<br />";
      ?>
    </p>
  </body>
</html>