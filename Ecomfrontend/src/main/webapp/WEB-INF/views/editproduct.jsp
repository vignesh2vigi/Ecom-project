<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="productEdited" method="post">
  <br><br><br>Product Id:<br>
  <input type="text" name="ProductId" value="${product.productId}" readonly="true" ><br><br>
  Product Name:<br>
  <input type="text" name="ProductName" value="${product.productName}"><br><br>
  Product Description:<br>
  <input type="text" name="ProductDescription" value="${product.productDescription}" ><br><br>
  Stock:<br>
  <input type="text" name="stock" value="${product.stock}" ><br><br>
  Price:<br>
  <input type="text" name="Price" value="${product.price}" ><br><br>
  Category:<br>
  <input type="text" name="category" value="${product.category}" ><br><br>
   Supplier Name:<br>
  <input type="text" name="supplierName" value="${product.supplierName}" ><br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>