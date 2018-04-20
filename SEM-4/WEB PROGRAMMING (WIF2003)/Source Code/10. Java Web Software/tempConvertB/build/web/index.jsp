<%-- 
    Document   : index
    Created on : May 28, 2008, 7:51:24 PM
    Author     : bob
    Purpose    : The initial document for an application that
                 uses a bean in the conversion of a given Celsius
                 temperature to an equivalent Fahrenheit temperature.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> index.jsp for tempConvertB </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h2> Welcome to the temperature converter service </h2>
        <form name="Temperature input form" action="response.jsp" 
              method="POST">
            Enter a temperature in Celsius:
            <input type="text" name="celsius" value="" size="4" />
            <p></p>
            <input type = "submit" value = "Convert to Fahrenheit" />
        </form>
    </body>
</html>
