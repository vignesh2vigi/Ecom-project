<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
th, td {
	padding: 5px;
}
th {
	text-align: left;
}
#page {
	margin: 20px;
}
</style>
</head>
<body>
<form action="proceed" method="post" class="form-horizontal">
<div id="page">
		<table style="width: 100%">
			<tr>
				<th align="left">S.No</th>
				<th align="left">Cart Id</th>
				<th align="left">Product Name</th>
				<th align="left">Price</th>
				<th align="left">Quantity</th>
				<th align="left">Total</th>
				<th align="left">Days</th>
				<th align="left">Remove</th>

			</tr>

			<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${cart.cartId}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td>${cart.qty}</td>
					<td>${cart.total}</td>
					<td>${cart.days}</td>
					<td><a href="removeCart?cartId=${cart.cartId}">Remove</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">Grand Total :</td>
				<td colspan="2">${GrandTotal }</td>
				<td></td>
			</tr>
			
		</table>
		</div>
		<p>
			<a href="proceed"><button align="left"
					class="w3-button w3-#009933">Proceed</button></a>
		</p>
		</form>
</body>

</body>
</html>