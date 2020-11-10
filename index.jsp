<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test</title>
    </head>

    <body>
        <h1>Hi!</h1>
        
    <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Last Name</th>
                <th>Country</th>
            </tr>
            <c:forEach var="data" items="${list}">
            <tr>     
                <td>${data.IdClient}</td>
                <td>${data.name}</td>
                <td>${data.lastname}</td>
                <td>${data.Country}</td>
                <td>
                    <a href="edit.htm?id=${data.IdClient}">Edit</a>
                    <a href="delete.htm?id=${data.IdClient}">Delete</a>
                </td>
            </tr>
             </c:forEach>
        </table>
        <a href="insert.htm">Insert Data</a>
    </body>
</html>
