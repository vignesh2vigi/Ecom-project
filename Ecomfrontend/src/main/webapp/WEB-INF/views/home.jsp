<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Car sale</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="navbar.jsp" %>


    <c:choose>
 <c:when test="${isUserClickedRegister == 'true' }">
<%@ include file="user.jsp" %>
</c:when>
<c:when test="${isUserClickedLogin == 'true' }">
<%@ include file="login.jsp" %>
</c:when>
<c:when test="${isUserClickedCategory == 'true' }">
<%@ include file="category.jsp" %>
</c:when>
<c:when test="${isUserClickedViewCategory == 'true' }">
<%@ include file="viewcategory.jsp" %>
</c:when>
<c:when test="${isUserClickedProduct == 'true' }">
<%@ include file="product.jsp" %>
</c:when>
<c:when test="${isUserClickedViewProduct == 'true' }">
<%@ include file="viewproduct.jsp" %>
</c:when>
<c:when test="${isUserClickedSupplier == 'true' }">
<%@ include file="supplier.jsp" %>
</c:when>
<c:when test="${isUserClickedViewSupplier == 'true' }">
<%@ include file="viewsupplier.jsp" %>
</c:when>
<c:when test="${myCartClicked == 'true' }">
<%@ include file="mycart.jsp" %>
</c:when>

<c:when test="${isUserClickedMoredetails == 'true' }">
<%@ include file="productDescription.jsp" %>
</c:when>
<c:when test="${newShippingaddressClicked == 'true' }">
<%@ include file="NewShippingaddress.jsp" %>
</c:when>
<c:when test="${isuserclickedcash == 'true' }">
<%@ include file="order.jsp" %>
</c:when>
<c:when test="${viewShippingAddressClicked  == 'true' }">
<%@ include file="shippingaddress.jsp" %>
</c:when>
<c:when test="${isuserclickeddeliverhere  == 'true' }">
<%@ include file="payment.jsp" %>
</c:when>
<c:when test="${isuserclickedcard  == 'true' }">
<%@ include file="card.jsp" %>
</c:when>
<c:otherwise>
<%@ include file="carousel.jsp" %>
<%@ include file="productlist.jsp" %>
</c:otherwise> 

</c:choose>
    
</body>
</html>

