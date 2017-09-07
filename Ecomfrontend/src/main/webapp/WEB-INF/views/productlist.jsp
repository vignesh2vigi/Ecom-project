<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
div.gallery {
    margin: 50px;
    border: 5px solid #ccc;
    float: left;
    width: 200px;
    padding: 30px;
    
}
div.gallery:hover {
    border: 3px solid #777;
}
div.gallery img {
    width: 100%;
    height: 100%;
   
     
}
div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<c:forEach items="${productList}" var="product">

<div class="gallery">
 <c:url value="/resource/product" var="photo"/>
    <img src="${photo}/${product.productId}.png" alt="${product.productId}" width=250px; height=250px; />
  
  <div class="desc"><ul style="list-style-type:none">
  <li class="span2"><h5 style="color: blue" >${product.productName}</h5>
  <h6>Price:${product.price}</h6></li></ul></div>
  <c:url value="/productDescription/${product.productId}" var="url"></c:url>
  <a class="btn btn-primary" href="${url}" role="button">Moredetails</a>
</div>


</c:forEach>
</body>
</html>