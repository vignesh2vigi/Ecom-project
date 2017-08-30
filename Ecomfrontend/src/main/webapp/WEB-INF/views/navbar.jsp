<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
   {
  font-family: 'Lato', sans-serif;
}
[am-TopLogo] {
    max-height: 70px;
    max-width: 210px;
    margin: 12px 11px;
}
[am-CallNow] {
    font-weight: 200;
    color: #333;
    vertical-align: middle;
    line-height: 35px;
    font-size: 19px;
    padding-right: 8px;
}
/*
  Relevant styles below
*/
.topper {
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
}

.navbar.navbar-inverse {
  background-image: linear-gradient(#9f9f9f, #535353 3%, #1f1f1f 17%, #212121 49%, #191919 89%, #000000 100%);
  border-top: 1px inset rgba(255, 255, 255, 0.1);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.5);
  border-radius: 10px;
  margin-top: 10px;
}

.navbar .navbar-nav > li > a {
  color: #d1d1d1;
  font-weight: 700;
  text-rendering: optimizeLegibility;
  text-shadow: 0px -1px black, 0px 1px rgba(255, 255, 255, 0.25);
  line-height: 18px;
}

.navbar .navbar-nav > li.active {
  color: #f8f8f8;
  background-color: #080808;
  box-shadow: inset 0px -28px 23px -21px rgba(255, 255, 255, 0.15);
  border-left: 1px solid #2A2A2A;
  border-right: 1px solid #272727;
}</style>
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
     <c:url value="/home" var="urlh"></c:url>
      <li class="active"><a href="${urlh }">Home</a></li>
      <!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">category type<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="renault">Renault</a></li>
          <li><a href="#">MaruthiSuzuki</a></li>
          <li><a href="#">Tata</a></li>
        </ul>
      </li> -->
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
      <c:url value="/loginpage" var="urllog"></c:url>
           <li><a href="${urllog}">Login</a></li>
           </c:if>
        <c:url value="/j_spring_security_logout" var="logout"></c:url>
        
        <c:if test="${pageContext.request.userPrincipal.name != null }">
         <security:authorize access="hasRole('ROLE_USER')">
         <c:url value="myCart" var="cart"></c:url>
        <li><a href="${cart}">cart(${sessionScope.noOfItem})</a></li>
         </security:authorize>
        <li><a href="${logout}">Logout</a></li>
        </c:if>
       
       
          
       
      </ul>
      
    </ul>
    
  </div>
</nav> 
</body>
</html>