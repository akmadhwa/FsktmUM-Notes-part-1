<%-- 
    Document   : response (for the tempConvertB project)
    Created on : May 28, 2008, 7:59:26 PM
    Author     : bob
    Purpose    : This is the response JSP document for the tempConvertB
                 application, which converts a given Celsius temperature
                 to the equivalent temperature in Fahrenheit.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Response document </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" 
                     class="org.mypackage.convert.Converter" />
        <jsp:setProperty name="mybean" property="celsius" />
        Given Celsius temperature is:
        <jsp:getProperty name = "mybean" property = "celsius" />
        <jsp:setProperty name = "mybean" property = "fahrenheit" 
                         value = "" />
        <br />Equivalent temperature in Fahrenheit is:
        <jsp:getProperty name="mybean" property="fahrenheit" />
    </body>
</html>
