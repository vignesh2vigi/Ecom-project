<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Boot</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header"> 
     <a class="navbar-brand" href="#">Carsale</a>
    </div>
    <ul class="nav navbar-nav">
    <c:url value="/home" var="gh"></c:url>
      <li class="active"><a href="${gh}">Home</a></li>
      <c:url value="/user" var="ur"></c:url>
      <li><a href="${ur}">REGISTER</a></li>
      <c:url value="/loginpage" var="log"></c:url>
      <li><a href="${log}">LOGIN</a></li>
      
    </ul>
  </div>
</nav>
  


</body>
</html>
