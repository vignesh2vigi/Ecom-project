<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row text-center">
		<div class="col-sm-6 col-sm-offset-3">
			<br>
			<br>
			<h2 style="color: #0fad00">Success</h2>
			

			<h4>
				<font color="#ba9a55">Your Shipment will deliver your address</font>
			</h4>

			<p style="font-size: 20px; color: #5C5C5C;">Thank you for
				shopping!!!</p>
			<c:url value="/home" var="h"></c:url>
			<a href="${h}" class="btn btn-success"> Visit Again </a> <br>
			<br>
		</div>

	</div>
</div>
</body>
</html>