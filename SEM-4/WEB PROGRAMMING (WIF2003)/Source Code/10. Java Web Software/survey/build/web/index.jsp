<%-- 
    Document   : index
    Created on : May 24, 2008, 8:37:33 PM
    Author     : bob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="Survey">
            <h2> Welcome to the Consumer Electronics Purchasing Survey</h2>
            <p />
            <h4> Your Gender: </h4>
            <p>
                <label>
                    <input type="radio" name="gender" value="female" checked="checked" />
                    Female <br />
                </label>
                <label>
                    <input type="radio" name="gender" value="male" />
                    Male <br /> <br /> <br />
                </label>
            </p>
            <p>
                <label>
                    <input type="radio" name="vote" value="0" />
                    Conventional TV <br />
                </label>
                <label>
                    <input type="radio" name="vote" value="1" />
                    HDTV <br />
                </label>
                <label>
                    <input type="radio" name="vote" value="2" />
                    MP3 player <br />
                </label>
                <label>
                    <input type="radio" name="vote" value="3" />
                    CD player <br />
                </label>
                <label>
                    <input type="radio" name="vote" value="4" />
                    Mini CD player/recorder <br />
                </label>
                <label>
                    <input type="radio" name="vote" value="5" />
                    DVD player <br />
                </label>
                <label>
                    <input type="radio" name="vote" value="6" checked="checked" />
                    Other <br /> <br />
                </label>
                <input type = "submit" value = "Submit Vote" />
                <input type = "reset" value = "Clear Vote Form" />
            </p>
        </form>
    </body>
</html>
