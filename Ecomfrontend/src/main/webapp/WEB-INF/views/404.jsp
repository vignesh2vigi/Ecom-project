<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>404</title>
<style>
h4{
font-weight: bold;
font-family: "Lucida Sans Unicode", "Lucida Grande", "sans-serif";
}
</style>
</head>
<body>
<%@ include file="nav2.jsp" %>

<center><h4>Page not found</h4></center><br>
<c:url value="/resource/images.png" var="image"></c:url>
<center><img src="${image}" /></center>
</body>
</html>