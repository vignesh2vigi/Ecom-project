<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="categoryEdited" method="post">
  <br><br><br>Category Id:<br>
  <input type="text" name="categoryId" value="${category.categoryId}" readonly="true"><br><br>
  Category Name:<br>
  <input type="text" name="categoryName" value="${category.categoryName}" ><br><br>
  Category Description:<br>
  <input type="text" name="categoryDescription" value="${category.categoryDescription}"><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>