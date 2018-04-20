<%-- 
  Document   : index
  Created on : May 27, 2008, 2:51:28 PM
  Author     : bob2
  Purpose    : To illustrate radio buttons in JSP.
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c"
           uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title> Illustrate radio buttons </title>
    </head>
    <body>
        <form method="POST">
            <p>
                <label>
                    <input type="radio" name="payment" value="visa" checked="checked" />
                    Visa <br />
                </label>
                <label>
                    <input type="radio" name="payment" value="mc" />
                    Master Charge <br />
                </label>
                <label>
                    <input type="radio" name="payment" value="discover" />
                    Discover <br />
                </label>
                <label>
                    <input type="radio" name="payment" value="check" />
                    Check <br />
                </label>
                <input type = "submit" value = "Submit" />
            </p>
        </form>
        
        <!-- If the form has been submitted, display the payment method -->
<c:if test = "${pageContext.request.method == 'POST'}">
    You have chosen the following payment method:
<c:choose>
<c:when test = "${param.payment == 'visa'}">
    Visa
 </c:when>
     <c:when test = "${param.payment == 'mc'}">
         Master Charge
         </c:when>
         <c:when test = "${param.payment == 'discover'}">
             Discover
         </c:when>
         <c:otherwise>
             Check
         </c:otherwise>
         </c:choose>
</c:if>
    </body>
</html>
