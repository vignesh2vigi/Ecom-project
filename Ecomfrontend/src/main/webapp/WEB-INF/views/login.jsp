<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<style>
body{
font-family: 'Lato', sans-seif;
color: black;
background-color:#cfd8ee;
}</style>
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container">
  <h2>Login</h2>
   <c:url value="/isvaliduser" var="action"></c:url>
  <form class="form-horizontal" action="${action}" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="emailId">Email:</label>
      <div class="col-sm-10">
        <input type="emailId" class="form-control" id="emailId" placeholder="Enter email" name="emailId">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
      </div>
    </div>
    
   <c:if test="${not empty error}">
				<div class="error"><b>${error}</b></div>
	 			</c:if> 
				<b>${message}</b>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
    