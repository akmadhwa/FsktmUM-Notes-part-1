<%-- 
    Document   : tempConvertEL2 (response document for tempConvertEL project)
    Created on : May 2, 2011, 4:54:38 PM
    Author     : bob2
    Purpose    : Convert a given temperature in Celsius to Fahrenheit

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tempConvertEL2.jsp</title>
    </head>
    <body>
        <p>
            Given temperature in Celsius:
            ${param.ctemp}
            <br /><br />
            Temperature in Fahrenheit:
            ${(1.8 * param.ctemp) + 32}
        </p>
    </body>
</html>
