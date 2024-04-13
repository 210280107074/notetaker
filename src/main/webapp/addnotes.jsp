<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="plugins.jsp"%>
<title>Add notes</title>
<style>
    .purple {
        background: rgb(2, 0, 36);
        background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(68, 9, 121, 1) 50%, rgba(0, 212, 255, 1) 100%);
    }

    /* Add padding to the form container */
    .form-container {
        padding: 30px;
    }

    /* Add margin to the label */
    label {
        margin-top: 20px;
    }
</style>
</head>
<body>
<div class="container-fluid p-0 m-0">

<%@ include file="navigation.jsp"%>
<form action="savenote" method="post" class="form-container">
    <label for="exampleInputEmail1">Note Title :</label>
    <input required type="text" name="title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
           placeholder="Enter Title" required>
    <div class="form-group">
        <label for="content">Content :</label>
        <textarea id="content" name="content" class="form-control" style="height: 200px;" required></textarea>
    </div>
    <div class="container text-center">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>
</div>
</body>
</html>
