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
<form>
<fieldset>
<div class="container">
  <h2>Category</h2>
  <table class="table">
    <thead>
      <tr>
        <th>count</th>
        <th>categoryId</th>
        <th>categoryName</th>
        <th>categoryDescription</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${categoryList}" var="category" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDescription}</td>
			<td><a href="editCategory?categoryId=${category.categoryId}">Edit</a></td>
			<td><a href="deleteCategory?categoryId=${category.categoryId}" onclick="return confirm('Are You Sure? Do you Want Delete Category : ${category.categoryName} ?')">Delete</a></td>
		</tr>
	</c:forEach>
          
     
    </tbody>
  </table>
</div>

</fieldset>
</form>
</body>
</html>