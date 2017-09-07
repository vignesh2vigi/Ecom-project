<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.w3-button {width:150px;}
.right {
    position: absolute;
    right: 650px;
    width: 300px;
    padding: 10px;
} 
          
    
}
</style>
</head>
<body>

<br><br> 
<div class="container" align="right" >
<c:url value="/resource/product" var="url" />
<img src="${url}/${product.productId}.png" alt="${product.productId}" width="250" height="350" align="left">
 
 
 <div class="right">
 <ul style="list-style-type:none">
 <br><br><br><br>
 <li class="span2"><h5 style="color: #99003d" >Product Name: ${product.productName}</h5>
  <h6 style="color: #99003d">Price: ${product.price}</h6></li></ul>
 <span style="color: red;"> ${message}</span>
  <div class="w3-container">
    
   
    <c:url value="/cart/addtocart?productId=${product.productId}" var="des"></c:url>
  <br><br><br>
  <p><a href="${des}"><button class="w3-button w3-pink">Add To Cart</button></a></p>
  
 
   <c:url value="/home" var="after"></c:url>
  <p><a href="${after}"><button align="left" class="w3-button w3-purple">Go Back</button></a></p> 
  
</div>
</div>
</div>
</body>
</html>