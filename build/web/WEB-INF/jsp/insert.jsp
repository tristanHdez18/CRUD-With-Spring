<%-- 
    Document   : insert
    Created on : Nov 9, 2020, 11:30:49 PM
    Author     : tristan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Insert</title>
    </head>
    <body class="bg-dark">
        <div class="container mt-5 col-lg-5 text-white">
            <div class="card bg-dark">

            </div>
            
            <div class="card-body bg-dark">
                <form method="POST" >
                    <label>Name</label>
                    <input type="text" name="name" class="form-control">
                    <br>
                    <label>Last Name</label>
                    <input type="text" name="lastName"class="form-control">
                    <br>
                    <label>Country</label>
                    <input type="text" name="Country"class="form-control">
                    <br>
                    <input type="submit" name="Add" class="btn btn-success">
                    <label></label>
                    <a href="index.htm"class="btn btn-danger">Back</a>
                </form>
            </div>
        </div>
    </body>
</html>
