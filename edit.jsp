<%-- 
    Document   : edit
    Created on : Nov 10, 2020, 9:58:55 AM
    Author     : tristan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <form method="POST">
            <input type="text" name="name" value="${list[0].name}">
            <input type="text" name="lastName" value="">
            <input type="text" name="country" value="">
            <input type="submit" value="Modificate" value="">
            <a href="index.htm">Back</a>
        </form>
    </body>
</html>
