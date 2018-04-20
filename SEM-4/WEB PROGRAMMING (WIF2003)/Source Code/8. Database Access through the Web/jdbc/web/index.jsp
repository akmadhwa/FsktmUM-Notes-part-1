<%-- 
    Document   : index (for the jdbc project)
    Created on : Sep 29, 2011, 12:00:42 PM
    Author     : bob7
    Purpose    : Present a form to collect an SQL command from the user, call
                 the JDBCServlet servlet to perform the command, and display
                 the results of the command.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Perform SQL command </title>
    </head>
    <body>
    <p>
      Please enter your query:
      <br />
      <form action = "JDBCServlet" method = "post">
        <textarea  rows = "2"  cols = "80" name = "query" >
        </textarea>
        <br /><br />
        <input type = "reset"  value = "Reset" />
        <input type = "submit"  value = "Submit request" />
      </form>    
    </p>
  </body>
</html>

