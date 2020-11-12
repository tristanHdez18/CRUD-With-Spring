<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Test</title>
    </head>

    <body class="bg-dark">
        <div class="container mt-5">
            <div class="card border-white">
                <div class="card-header bg-dark text-white border-white">
                     <a class ="btn btn-info" href="insert.htm">Insert Data</a>
                </div>
                <div class="card-body bg-dark">
                    <table class="table table-dark table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Last Name</th>
                                <th>Country</th>
                                <th>Settings</th>
                            </tr>
                        </thead>
                        <tbody>
                             <c:forEach var="data" items="${list}">
                            <tr>
                                <td>${data.IdClient}</td>
                                <td>${data.name}</td>
                                <td>${data.lastName}</td>
                                <td>${data.Country}</td>
                                <td>
                                    <a class ="btn btn-info" href="edit.htm?id=${data.IdClient}">Edit</a>
                                    <a class ="btn btn-danger" href="delete.htm?id=${data.IdClient}">Delete</a>
                                </td>
                            </tr>
                             </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
