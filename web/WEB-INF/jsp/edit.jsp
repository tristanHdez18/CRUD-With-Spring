<%-- 
    Document   : edit
    Created on : Nov 10, 2020, 9:58:55 AM
    Author     : tristan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body class="bg-dark">
        <div class="container mt-5 col-lg-5 text-white">
            <div class="card bg-dark">

            </div>
            
            <div class="card-body bg-dark">
                <form method="POST" >
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" value="${list[0].name}">
                    <br>
                    <label>Last Name</label>
                    <input type="text" name="lastName"class="form-control" value="">
                    <br>
                    <label>Country</label>
                    <input type="text" name="Country"class="form-control" value="">
                    <br>
                    <input type="submit" name="Edit" class="btn btn-success">
                    <label></label>
                    <a href="index.htm"class="btn btn-danger">Back</a>
                </form>
            </div>
        </div>
    </body>
</html>
