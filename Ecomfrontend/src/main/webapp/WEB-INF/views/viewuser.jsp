<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>User</h2>
  <table class="table">
    <thead>
      <tr>
        <th>userId</th>
        <th>userName</th>
        <th>emailId</th>
        <th>password</th>
        <th>contactNumber</th>
        <th>address</th>
        <th>zipcode</th>
        <th>enabled</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${userList}" var="user" varStatus="status">
  <tr>
    <td>${status.count}</td>
			<td>${user.userId}</td>
			<td>${user.userName}</td>
			<td>${user.emailId}</td>
			<td>${user.password}</td>
			<td>${user.contactNumber}</td>
			<td>${user.address}</td>
			<td>${user.zipcode}</td>
			<td>${user.enabled}</td> 
			<td><a href="">Edit</a></td>
			<td><a href="" onclick="">Delete</a></td>
  </tr>
  </c:forEach>
  </tbody>
  </table>
  </div>
</body>
</html>