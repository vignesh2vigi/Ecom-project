<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
<body>
<c:url value="/admin/product" var="produrl"/>
<c:url value="/admin/category" var="caturl"/>
<c:url value="/admin/supplier" var="supurl"/>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
    <div class="navbar-header">
    <input type="image" src="resource/renault/duster/duster 1.jpg" height="72" width="99">
    </div>
    <ul class="nav navbar-nav">
     <a class="navbar-brand" href="#">Carsale</a>
      <li class="active"><a href="home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">category type<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="renault">Renault</a></li>
          <li><a href="#">MaruthiSuzuki</a></li>
          <li><a href="#">Tata</a></li>
        </ul>
      </li>
       <security:authorize access="hasRole('ROLE_ADMIN')">
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${caturl}/addcategory">ADD</a></li>
          <li><a href="${caturl}/viewcategory">VIEW</a></li>
        </ul>
      </li>
      </security:authorize>
     </ul>
     <ul class="nav navbar-nav navbar-right">
     
    <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CART<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="cart">ADD</a></li>
          <li><a href="viewcart">VIEW</a></li>
        </ul>
      </li> -->
     <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${produrl}/addproduct">ADD</a></li>
          <li><a href="${produrl}/viewproduct">VIEW</a></li>
        </ul>
        </security:authorize>
      </li>
      <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIER<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${supurl}/addsupplier">ADD</a></li>
          <li><a href="${supurl}/viewsupplier">VIEW</a></li>
        </ul>
      </li>
      </security:authorize>
    
      <c:if test="${pageContext.request.userPrincipal.name == null }">
      <li><a href="user"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      
           <li><a href="loginpage">Login</a></li>
           </c:if>
       
        <c:if test="${pageContext.request.userPrincipal.name != null }">
         <security:authorize access="hasRole('ROLE_USER')">
        <li><a href="cart(0)">cart(0)</a></li>
        </security:authorize>
        <c:url value="/j_spring_security_logout" var="logout"></c:url>
        
          <li><a href="${logout}">Logout</a></li>
         </c:if>
      </ul>
      
    </ul>
    <!-- <!-- <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Search</button>
    </form> --> -->
  </div>
</nav> 
</body>
</html>