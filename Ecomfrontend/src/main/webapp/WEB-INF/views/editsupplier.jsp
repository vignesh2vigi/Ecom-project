<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="supplierEdited" method="post">

 <br><br><br> SupplierId:<br>
  <input type="text" name="SupplierId" value="${supplier.supplierId}" readonly="true"  ><br><br>
  Supplier Name:<br>
  <input type="text" name="SupplierName" value="${supplier.supplierName}"><br><br>
  Contact Number:<br>
  <input type="text" name="ContactNumber" value="${supplier.contactNumber}"><br><br>
  
  <input type="submit" value="Submit">
  
</form>

</body>
</html>