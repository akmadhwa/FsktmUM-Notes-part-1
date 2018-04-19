<%-- 
    Document   : index.jsp (for the tempConvertEL1 application)
    Created on : May 27, 2008, 2:30:02 PM
    Author     : bob
    Purpose    : Convert a given temperature in Celsius
                 to Fahrenheit. This is both the request
                 and the response document.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c"
           uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title> Temperature Converter </title>
    </head>
    <body>
        <c:if test = "${pageContext.request.method != 'POST'}">
            <form action="index.jsp"  method="POST">
                Celsius temperature:
                <input type="text" name="ctemp" value="" /> 
                <input type = "submit" value = "Convert to Fahrenheit" />
            </form> 
        </c:if>
        <c:if test = "${pageContext.request.method == 'POST'}">
            Given temperature in Celsius:
               <c:out value = "${param.ctemp}" /> <br />
               The temperature in Fahrenheit:
            <c:out value = "${(1.8 * param.ctemp) + 32}" />
        </c:if>
    </body>
</html>
