<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>403</title>

</head>
<body>
<%@ include file="nav2.jsp" %>

<center><h4>You are an unauthorized person to view this page</h4></center><br>
<c:url value="/resource/403forbiddenerror.jpg" var="im"></c:url>
<center><img src="${im}" /></center>
 
</body>
</html>