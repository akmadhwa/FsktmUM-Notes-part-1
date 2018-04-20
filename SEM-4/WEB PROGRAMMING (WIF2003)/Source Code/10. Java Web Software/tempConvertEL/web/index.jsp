<%-- 
    Document   : index (for the tempConvertEL project)
    Created on : May 2, 2011, 4:53:03 PM
    Author     : bob2
    Purpose    : initial document for the tempConvertEL project.
                 Displays a form to collect a Celsius temperature from the
                 user to be converted to Fahrenheit
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Initial document for the tempConvertEL project</title>
    </head>
    <body>
        <form action="tempConvertEL2.jsp" method="Post">
            <p> Celsius temperature:
                <input type ="text" name="ctemp" value="" />
                <input type ="submit"
                       value ="Convert to Fahrenheit" />
            </p>    
        </form>
    </body>
</html>
