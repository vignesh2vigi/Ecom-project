<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">

<!-- <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Tangerine" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<title>payment</title>
</head>
<body>
<div>
<h2><!-- <font face="Tangerine" size="30"> -->Payment Method</h2>
</div>
<br><br><br>
<c:url value="/order/${shippingId}" var="urlor"></c:url>
<a href="${urlor}" class="btn btn-primary pull-right "><!-- <font face="Tangerine" size="80"> -->Cash On Delivery </a>
<c:url value="/card" var="urlcad"></c:url>
<a href="${urlcad}" class="btn btn-primary pull-left "><!-- <font face="Tangerine" size="80"> -->Cash On Credit</a>
</body>
</html>